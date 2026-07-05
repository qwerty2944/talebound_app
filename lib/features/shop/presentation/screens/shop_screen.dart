import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/network/api_exception.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/game_widgets.dart';
import '../../../game/presentation/controllers/profile_controller.dart';
import '../../domain/entities/item_rarity.dart';
import '../../domain/entities/merchant.dart';
import '../../domain/entities/shop_item.dart';
import '../../domain/usecases/buy_item.dart';
import '../controllers/merchant_list_controller.dart';
import 'sell_tab.dart';

/// 상점: 상인 선택 → 구매/판매 탭. 골드는 서버 응답으로 갱신한다.
class ShopScreen extends ConsumerStatefulWidget {
  const ShopScreen({super.key});

  @override
  ConsumerState<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends ConsumerState<ShopScreen> {
  int _selectedMerchant = 0;

  /// 거래 응답으로 받은 최신 골드(있으면 프로필 값 대신 표시).
  int? _goldOverride;

  @override
  Widget build(BuildContext context) {
    final merchants = ref.watch(merchantListProvider);
    final profile = ref.watch(profileControllerProvider);
    final profileGold = profile.asData?.value?.gold ?? 0;
    final gold = _goldOverride ?? profileGold;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('상점'),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Center(
                child: ResourcePill(
                    icon: '🪙', value: '$gold', color: AppColors.accent),
              ),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: AppColors.accent,
            labelColor: AppColors.accentBright,
            unselectedLabelColor: AppColors.textMuted,
            tabs: [
              Tab(text: '구매'),
              Tab(text: '판매'),
            ],
          ),
        ),
        body: merchants.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (e, _) => Center(
            child: Text('상점을 불러오지 못했습니다\n$e',
                textAlign: TextAlign.center,
                style: const TextStyle(color: AppColors.danger)),
          ),
          data: (list) {
            if (list.isEmpty) {
              return const Center(
                child: Text('상인이 없습니다',
                    style: TextStyle(color: AppColors.textMuted)),
              );
            }
            final idx = _selectedMerchant.clamp(0, list.length - 1);
            final merchant = list[idx];
            return Column(
              children: [
                _MerchantSelector(
                  merchants: list,
                  selected: idx,
                  onSelect: (i) => setState(() => _selectedMerchant = i),
                ),
                _MerchantGreeting(merchant: merchant),
                Expanded(
                  child: TabBarView(
                    children: [
                      _BuyTab(
                        merchant: merchant,
                        gold: gold,
                        onBought: (newGold) =>
                            setState(() => _goldOverride = newGold),
                      ),
                      SellTab(
                        gold: gold,
                        onSold: (newGold) =>
                            setState(() => _goldOverride = newGold),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _MerchantSelector extends StatelessWidget {
  const _MerchantSelector({
    required this.merchants,
    required this.selected,
    required this.onSelect,
  });

  final List<Merchant> merchants;
  final int selected;
  final ValueChanged<int> onSelect;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        itemCount: merchants.length,
        separatorBuilder: (_, _) => const SizedBox(width: 10),
        itemBuilder: (_, i) {
          final m = merchants[i];
          final active = i == selected;
          return GamePanel(
            tint: active ? AppColors.accent : null,
            glow: active,
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            onTap: () => onSelect(i),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(m.icon, style: const TextStyle(fontSize: 22)),
                const SizedBox(width: 8),
                Text(
                  m.nameKo,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color:
                        active ? AppColors.accentBright : AppColors.textMuted,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _MerchantGreeting extends StatelessWidget {
  const _MerchantGreeting({required this.merchant});

  final Merchant merchant;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 4),
      child: Row(
        children: [
          const Icon(Icons.chat_bubble_outline,
              size: 14, color: AppColors.textFaint),
          const SizedBox(width: 6),
          Expanded(
            child: Text(
              merchant.dialogues.greeting,
              style: const TextStyle(
                  fontSize: 12,
                  fontStyle: FontStyle.italic,
                  color: AppColors.textMuted),
            ),
          ),
        ],
      ),
    );
  }
}

class _BuyTab extends ConsumerWidget {
  const _BuyTab({
    required this.merchant,
    required this.gold,
    required this.onBought,
  });

  final Merchant merchant;
  final int gold;
  final ValueChanged<int> onBought;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (merchant.stock.isEmpty) {
      return const Center(
        child: Text('취급 품목이 없습니다',
            style: TextStyle(color: AppColors.textMuted)),
      );
    }
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: merchant.stock.length,
      separatorBuilder: (_, _) => const SizedBox(height: 10),
      itemBuilder: (_, i) {
        final item = merchant.stock[i];
        return _ItemTile(
          item: item,
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('🪙 ${item.value}',
                  style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: AppColors.accent)),
              const SizedBox(height: 2),
              const Text('구매',
                  style: TextStyle(fontSize: 11, color: AppColors.textFaint)),
            ],
          ),
          onTap: () => _openBuySheet(context, ref, item),
        );
      },
    );
  }

  Future<void> _openBuySheet(
      BuildContext context, WidgetRef ref, ShopItem item) async {
    await showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (_) => _QuantitySheet(
        item: item,
        unitPrice: item.value,
        availableGold: gold,
        actionLabel: '구매',
        onConfirm: (qty) => _buy(context, ref, item, qty),
      ),
    );
  }

  Future<void> _buy(
      BuildContext context, WidgetRef ref, ShopItem item, int qty) async {
    final messenger = ScaffoldMessenger.of(context);
    try {
      final res = await ref.read(buyItemProvider).call(
            npcId: merchant.id,
            itemId: item.id,
            quantity: qty,
          );
      onBought(res.gold);
      // 백엔드가 인벤 여유 부족 시 일부만 지급할 수 있음(delivered < qty).
      final partial = res.quantity < qty;
      showGameSnack(
        messenger,
        '${merchant.dialogues.purchase} ${item.nameKo} ×${res.quantity} 구매',
        detail: partial ? '인벤토리 공간이 부족해 일부만 구매했습니다' : null,
        icon: '🛍️',
        tint: partial ? AppColors.fatigue : AppColors.success,
      );
    } on ApiException catch (e) {
      final msg = e.code == 'NOT_ENOUGH_GOLD'
          ? merchant.dialogues.notEnoughGold
          : e.message;
      showGameSnack(messenger, msg, icon: '⚠️', tint: AppColors.danger);
    }
  }
}

/// 아이템 행(구매/판매 공용): 이모지 + 이름 + 등급 배지 + trailing.
class _ItemTile extends StatelessWidget {
  const _ItemTile({
    required this.item,
    required this.trailing,
    this.onTap,
  });

  final ShopItem item;
  final Widget trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final tint = rarityTint(item.rarity);
    return GamePanel(
      tint: item.rarity == ItemRarity.common ? null : tint,
      padding: const EdgeInsets.all(12),
      onTap: onTap,
      child: Row(
        children: [
          Container(
            width: 46,
            height: 46,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: tint.withValues(alpha: 0.12),
              border: Border.all(color: tint.withValues(alpha: 0.5)),
            ),
            child: Text(item.emoji, style: const TextStyle(fontSize: 24)),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.nameKo,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary)),
                const SizedBox(height: 4),
                GameBadge(label: item.rarity.nameKo, color: item.rarity.color),
              ],
            ),
          ),
          const SizedBox(width: 8),
          trailing,
        ],
      ),
    );
  }
}

/// 수량 스텝퍼 바텀시트(1~99). 총액/보유골드 표시.
class _QuantitySheet extends StatefulWidget {
  const _QuantitySheet({
    required this.item,
    required this.unitPrice,
    required this.availableGold,
    required this.actionLabel,
    required this.onConfirm,
    this.maxQuantity = 99,
  });

  final ShopItem item;
  final int unitPrice;
  final int availableGold;
  final String actionLabel;
  final int maxQuantity;
  final Future<void> Function(int quantity) onConfirm;

  @override
  State<_QuantitySheet> createState() => _QuantitySheetState();
}

class _QuantitySheetState extends State<_QuantitySheet> {
  int _qty = 1;
  bool _submitting = false;

  int get _total => widget.unitPrice * _qty;

  /// 구매만 골드 상한을 적용(판매는 availableGold를 상한으로 쓰지 않음).
  bool get _isBuy => widget.actionLabel == '구매';
  bool get _affordable => !_isBuy || _total <= widget.availableGold;

  void _setQty(int v) =>
      setState(() => _qty = v.clamp(1, widget.maxQuantity));

  @override
  Widget build(BuildContext context) {
    final item = widget.item;
    return Container(
      decoration: gamePanel(tint: AppColors.borderStrong, radius: 20),
      margin: const EdgeInsets.all(12),
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 18,
        bottom: 18 + MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(item.emoji, style: const TextStyle(fontSize: 28)),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item.nameKo,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textPrimary)),
                    Text('개당 🪙 ${widget.unitPrice}',
                        style: const TextStyle(
                            fontSize: 12, color: AppColors.textMuted)),
                  ],
                ),
              ),
              GameBadge(label: item.rarity.nameKo, color: item.rarity.color),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _StepBtn(icon: Icons.remove, onTap: () => _setQty(_qty - 1)),
              const SizedBox(width: 10),
              _StepBtn(icon: Icons.remove_circle_outline, small: true,
                  onTap: () => _setQty(_qty - 10)),
              SizedBox(
                width: 84,
                child: Text('$_qty',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary)),
              ),
              _StepBtn(icon: Icons.add_circle_outline, small: true,
                  onTap: () => _setQty(_qty + 10)),
              const SizedBox(width: 10),
              _StepBtn(icon: Icons.add, onTap: () => _setQty(_qty + 1)),
            ],
          ),
          const SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('총액',
                  style: TextStyle(fontSize: 14, color: AppColors.textMuted)),
              Text('🪙 $_total',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color:
                          _affordable ? AppColors.accent : AppColors.danger)),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: (_affordable && !_submitting)
                  ? () async {
                      setState(() => _submitting = true);
                      final nav = Navigator.of(context);
                      await widget.onConfirm(_qty);
                      if (nav.mounted) nav.pop();
                    }
                  : null,
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.primary,
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
              child: _submitting
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                          strokeWidth: 2, color: Colors.white))
                  : Text(_affordable
                      ? '${widget.actionLabel} (×$_qty)'
                      : '골드가 부족합니다'),
            ),
          ),
        ],
      ),
    );
  }
}

class _StepBtn extends StatelessWidget {
  const _StepBtn({required this.icon, required this.onTap, this.small = false});

  final IconData icon;
  final VoidCallback onTap;
  final bool small;

  @override
  Widget build(BuildContext context) {
    final size = small ? 38.0 : 46.0;
    return Material(
      color: AppColors.surfaceAlt,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: SizedBox(
          width: size,
          height: size,
          child: Icon(icon,
              color: AppColors.textPrimary, size: small ? 18 : 24),
        ),
      ),
    );
  }
}

/// 판매 탭에서 아이템 행을 재사용할 수 있도록 공개.
class ShopItemTile extends StatelessWidget {
  const ShopItemTile({
    super.key,
    required this.item,
    required this.trailing,
    this.onTap,
  });

  final ShopItem item;
  final Widget trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) =>
      _ItemTile(item: item, trailing: trailing, onTap: onTap);
}

/// 판매 탭에서 수량 시트를 재사용할 수 있도록 공개.
class QuantitySheet extends StatelessWidget {
  const QuantitySheet({
    super.key,
    required this.item,
    required this.unitPrice,
    required this.actionLabel,
    required this.onConfirm,
    this.maxQuantity = 99,
  });

  final ShopItem item;
  final int unitPrice;
  final String actionLabel;
  final int maxQuantity;
  final Future<void> Function(int quantity) onConfirm;

  @override
  Widget build(BuildContext context) => _QuantitySheet(
        item: item,
        unitPrice: unitPrice,
        availableGold: 0,
        actionLabel: actionLabel,
        maxQuantity: maxQuantity,
        onConfirm: onConfirm,
      );
}
