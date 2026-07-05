import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/network/api_exception.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/game_widgets.dart';
import '../../../inventory/domain/entities/game_item.dart';
import '../../../inventory/presentation/controllers/inventory_controller.dart';
import '../../domain/entities/item_rarity.dart';
import '../../domain/entities/shop_item.dart';
import '../../domain/usecases/sell_item.dart';
import 'shop_screen.dart';

/// 판매 탭: 개인 인벤토리(태스크 #2)를 읽어 판매 가능한 아이템을 나열한다.
/// 판매 단가 = floor(value*0.4) (백엔드 getItemSellPrice와 동일).
class SellTab extends ConsumerWidget {
  const SellTab({super.key, required this.gold, required this.onSold});

  final int gold;

  /// 판매 성공 시 서버가 돌려준 갱신 골드.
  final ValueChanged<int> onSold;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inventory = ref.watch(inventoryControllerProvider);

    return inventory.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(
        child: Text('인벤토리를 불러오지 못했습니다\n$e',
            textAlign: TextAlign.center,
            style: const TextStyle(color: AppColors.danger)),
      ),
      data: (entries) {
        // 메타가 있고 판매가(>0)가 산정되는 아이템만 노출.
        final sellable = entries
            .where((e) => e.item != null && _sellPrice(e.item!) > 0)
            .toList();
        if (sellable.isEmpty) {
          return const _EmptySell();
        }
        return ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: sellable.length,
          separatorBuilder: (_, _) => const SizedBox(height: 10),
          itemBuilder: (_, i) {
            final entry = sellable[i];
            final item = _toShopItem(entry.item!);
            final unit = _sellPrice(entry.item!);
            return ShopItemTile(
              item: item,
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('🪙 $unit',
                      style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: AppColors.accent)),
                  const SizedBox(height: 2),
                  Text('보유 ${entry.quantity}',
                      style: const TextStyle(
                          fontSize: 11, color: AppColors.textFaint)),
                ],
              ),
              onTap: () => _openSellSheet(context, ref, item, unit,
                  owned: entry.quantity),
            );
          },
        );
      },
    );
  }

  int _sellPrice(GameItem item) => (item.value * 0.4).floor();

  ShopItem _toShopItem(GameItem g) => ShopItem(
        id: g.id,
        nameKo: g.nameKo,
        type: g.type,
        subtype: g.subtype ?? '',
        rarity: ItemRarity.fromId(g.rarity),
        value: g.value,
        stackable: g.stackable,
        emoji: itemEmoji(
            type: g.type, subtype: g.subtype ?? '', weaponType: g.weaponType),
      );

  Future<void> _openSellSheet(
    BuildContext context,
    WidgetRef ref,
    ShopItem item,
    int unitPrice, {
    required int owned,
  }) async {
    await showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (_) => QuantitySheet(
        item: item,
        unitPrice: unitPrice,
        actionLabel: '판매',
        // 백엔드 상한 99 + 보유 수량 중 작은 값.
        maxQuantity: owned < 99 ? owned : 99,
        onConfirm: (qty) => _sell(context, ref, item, qty),
      ),
    );
  }

  Future<void> _sell(
      BuildContext context, WidgetRef ref, ShopItem item, int qty) async {
    final messenger = ScaffoldMessenger.of(context);
    try {
      final res =
          await ref.read(sellItemProvider).call(itemId: item.id, quantity: qty);
      onSold(res.gold);
      // 인벤 수량 갱신.
      await ref.read(inventoryControllerProvider.notifier).refresh();
      showGameSnack(
        messenger,
        '${item.nameKo} ×$qty 판매 완료',
        icon: '💰',
        tint: AppColors.success,
      );
    } on ApiException catch (e) {
      showGameSnack(messenger, e.message, icon: '⚠️', tint: AppColors.danger);
    }
  }
}

class _EmptySell extends StatelessWidget {
  const _EmptySell();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(28),
        child: GamePanel(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('🎒', style: TextStyle(fontSize: 40)),
              SizedBox(height: 14),
              Text('판매할 아이템이 없습니다',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary)),
              SizedBox(height: 8),
              Text('전투·던전에서 아이템을 얻거나\n상점에서 구매한 뒤 판매할 수 있습니다.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13, color: AppColors.textMuted)),
            ],
          ),
        ),
      ),
    );
  }
}
