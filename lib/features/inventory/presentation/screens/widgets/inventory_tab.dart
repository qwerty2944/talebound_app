import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/theme/app_theme.dart';
import '../../../domain/entities/game_item.dart';
import '../../rarity.dart';

/// 인벤토리 탭: 타입 필터 + 아이템 그리드(등급색/수량/이름).
class InventoryTab extends StatefulWidget {
  const InventoryTab({
    super.key,
    required this.inventory,
    required this.onRefresh,
    required this.onTapItem,
  });

  final AsyncValue<List<InventoryEntry>> inventory;
  final Future<void> Function() onRefresh;
  final void Function(InventoryEntry) onTapItem;

  @override
  State<InventoryTab> createState() => _InventoryTabState();
}

const _filters = <(String, String)>[
  ('all', '전체'),
  ('equipment', '장비'),
  ('consumable', '소비'),
  ('material', '재료'),
  ('misc', '기타'),
];

class _InventoryTabState extends State<InventoryTab> {
  String _type = 'all';

  @override
  Widget build(BuildContext context) {
    return widget.inventory.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => _Error(message: '$e', onRetry: widget.onRefresh),
      data: (all) {
        final list = _type == 'all'
            ? all
            : all.where((e) => e.type == _type).toList();
        return Column(
          children: [
            _FilterBar(
              selected: _type,
              onSelect: (t) => setState(() => _type = t),
            ),
            Expanded(
              child: RefreshIndicator(
                onRefresh: widget.onRefresh,
                child: list.isEmpty
                    ? ListView(
                        children: const [
                          SizedBox(height: 120),
                          Center(
                            child: Text('아이템이 없습니다.',
                                style: TextStyle(color: AppColors.textMuted)),
                          ),
                        ],
                      )
                    : GridView.builder(
                        padding: const EdgeInsets.all(14),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: 0.82,
                        ),
                        itemCount: list.length,
                        itemBuilder: (_, i) => _ItemCell(
                          entry: list[i],
                          onTap: () => widget.onTapItem(list[i]),
                        ),
                      ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _FilterBar extends StatelessWidget {
  const _FilterBar({required this.selected, required this.onSelect});

  final String selected;
  final void Function(String) onSelect;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        itemCount: _filters.length,
        separatorBuilder: (_, _) => const SizedBox(width: 8),
        itemBuilder: (_, i) {
          final (key, label) = _filters[i];
          final active = key == selected;
          return GestureDetector(
            onTap: () => onSelect(key),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: active
                    ? AppColors.primary.withValues(alpha: 0.9)
                    : AppColors.surfaceAlt,
                borderRadius: BorderRadius.circular(9),
                border: Border.all(
                  color: active ? AppColors.borderStrong : AppColors.border,
                ),
              ),
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: active ? Colors.white : AppColors.textMuted,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _ItemCell extends StatelessWidget {
  const _ItemCell({required this.entry, required this.onTap});

  final InventoryEntry entry;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = rarityColor(entry.rarity);
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: color.withValues(alpha: 0.7), width: 1.4),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          _emoji(entry),
                          style: const TextStyle(fontSize: 30),
                        ),
                      ),
                    ),
                    Text(
                      entry.displayName,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 10.5,
                        height: 1.1,
                        color: color,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              if (entry.quantity > 1)
                Positioned(
                  right: 4,
                  bottom: 4,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                    decoration: BoxDecoration(
                      color: AppColors.backgroundDeep.withValues(alpha: 0.85),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      'x${entry.quantity}',
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  String _emoji(InventoryEntry e) {
    final item = e.item;
    if (item == null) return '❔';
    switch (item.type) {
      case 'equipment':
        if (item.subtype == 'weapon') return '⚔️';
        if (item.subtype == 'accessory') return '💍';
        return '🛡️';
      case 'consumable':
        return '🧪';
      case 'material':
        return '🪨';
      default:
        return '📦';
    }
  }
}

class _Error extends StatelessWidget {
  const _Error({required this.message, required this.onRetry});

  final String message;
  final Future<void> Function() onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('인벤토리를 불러오지 못했습니다',
              style: TextStyle(color: AppColors.danger)),
          const SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(message,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: AppColors.textFaint, fontSize: 12)),
          ),
          const SizedBox(height: 12),
          OutlinedButton(onPressed: onRetry, child: const Text('다시 시도')),
        ],
      ),
    );
  }
}
