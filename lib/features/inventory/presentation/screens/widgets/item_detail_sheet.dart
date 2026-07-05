import 'package:flutter/material.dart';

import '../../../../../core/theme/app_theme.dart';
import '../../../../../core/widgets/game_widgets.dart';
import '../../../domain/entities/game_item.dart';
import '../../../domain/logic/equip_logic.dart';
import '../../rarity.dart';

/// 아이템 상세 바텀시트: 이름/등급/스탯 + (장비면) 장착 버튼.
class ItemDetailSheet extends StatelessWidget {
  const ItemDetailSheet({super.key, required this.entry, this.onEquip});

  final InventoryEntry entry;
  final VoidCallback? onEquip;

  @override
  Widget build(BuildContext context) {
    final item = entry.item;
    final color = rarityColor(entry.rarity);
    // 장비면 전투 반영 스탯을, 아니면 원본 stats 를 표시.
    final stats = (item != null && item.isEquipment)
        ? EquipLogic.itemToStats(item)
        : (item?.stats ?? const <String, num>{});

    return SafeArea(
      child: Container(
        margin: const EdgeInsets.all(12),
        padding: const EdgeInsets.all(18),
        decoration: gamePanel(tint: color, glow: true),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    entry.displayName,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: color),
                  ),
                ),
                GameBadge(label: rarityNameKo(entry.rarity), color: color),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(_typeLabel(item),
                    style: const TextStyle(
                        fontSize: 12, color: AppColors.textMuted)),
                if (entry.quantity > 1) ...[
                  const SizedBox(width: 8),
                  Text('보유 ${entry.quantity}',
                      style: const TextStyle(
                          fontSize: 12, color: AppColors.textFaint)),
                ],
              ],
            ),
            if (item == null) ...[
              const SizedBox(height: 12),
              Text('아이템 정보를 찾을 수 없습니다 (${entry.itemId})',
                  style: const TextStyle(
                      fontSize: 12, color: AppColors.textFaint)),
            ],
            if (stats.isNotEmpty) ...[
              const SizedBox(height: 14),
              const SectionLabel('스탯'),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  for (final e in stats.entries)
                    _StatChip(label: statLabel(e.key), value: e.value),
                ],
              ),
            ],
            if (item != null && item.requiredLevel > 1) ...[
              const SizedBox(height: 12),
              Text('요구 레벨 ${item.requiredLevel}',
                  style: const TextStyle(
                      fontSize: 12, color: AppColors.textMuted)),
            ],
            if (onEquip != null) ...[
              const SizedBox(height: 18),
              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  style: FilledButton.styleFrom(
                    backgroundColor: AppColors.primary,
                  ),
                  onPressed: onEquip,
                  icon: const Icon(Icons.shield_moon, size: 18),
                  label: const Text('장착'),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  String _typeLabel(GameItem? item) {
    if (item == null) return '알 수 없음';
    const t = {
      'equipment': '장비',
      'consumable': '소비',
      'material': '재료',
      'misc': '기타',
    };
    return t[item.type] ?? item.type;
  }
}

class _StatChip extends StatelessWidget {
  const _StatChip({required this.label, required this.value});

  final String label;
  final num value;

  @override
  Widget build(BuildContext context) {
    final v = value is int || value == value.roundToDouble()
        ? value.toInt().toString()
        : value.toString();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: AppColors.backgroundDeep.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.border),
      ),
      child: Text('$label +$v',
          style: const TextStyle(
              fontSize: 12,
              color: AppColors.textPrimary,
              fontWeight: FontWeight.w600)),
    );
  }
}
