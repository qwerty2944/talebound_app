import 'package:flutter/material.dart';

import '../../../../../core/theme/app_theme.dart';
import '../../../../../core/widgets/game_widgets.dart';
import '../../../domain/entities/equipment.dart';
import '../../rarity.dart';

/// 장비 탭: 12슬롯(무기/방어구/장신구) + 총 보너스 요약. 착용 슬롯 탭 → 해제.
class EquipmentTab extends StatelessWidget {
  const EquipmentTab({
    super.key,
    required this.equipment,
    required this.busy,
    required this.loading,
    required this.onUnequip,
  });

  final Equipment equipment;
  final bool busy;
  final bool loading;
  final void Function(EquipmentSlot slot, EquippedItem item) onUnequip;

  static const _weapon = [EquipmentSlot.mainHand, EquipmentSlot.offHand];
  static const _armor = [
    EquipmentSlot.helmet,
    EquipmentSlot.armor,
    EquipmentSlot.cloth,
    EquipmentSlot.pants,
  ];
  static const _accessory = [
    EquipmentSlot.ring1,
    EquipmentSlot.ring2,
    EquipmentSlot.necklace,
    EquipmentSlot.earring1,
    EquipmentSlot.earring2,
    EquipmentSlot.bracelet,
  ];

  @override
  Widget build(BuildContext context) {
    if (loading) return const Center(child: CircularProgressIndicator());
    return Stack(
      children: [
        ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _Summary(equipment: equipment),
            const SizedBox(height: 18),
            const SectionLabel('무기', icon: Icons.colorize),
            const SizedBox(height: 10),
            _grid(_weapon),
            const SizedBox(height: 18),
            const SectionLabel('방어구', icon: Icons.security),
            const SizedBox(height: 10),
            _grid(_armor),
            const SizedBox(height: 18),
            const SectionLabel('장신구', icon: Icons.brightness_7),
            const SizedBox(height: 10),
            _grid(_accessory),
          ],
        ),
        if (busy)
          const Positioned.fill(
            child: ColoredBox(
              color: Color(0x66000000),
              child: Center(child: CircularProgressIndicator()),
            ),
          ),
      ],
    );
  }

  Widget _grid(List<EquipmentSlot> slots) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 2.6,
      children: [
        for (final slot in slots)
          _SlotCard(
            slot: slot,
            item: equipment.item(slot),
            onUnequip: onUnequip,
          ),
      ],
    );
  }
}

class _Summary extends StatelessWidget {
  const _Summary({required this.equipment});

  final Equipment equipment;

  @override
  Widget build(BuildContext context) {
    final count = equipment.slots.length;
    return GamePanel(
      glow: true,
      tint: AppColors.accent,
      child: Row(
        children: [
          const Icon(Icons.auto_awesome, color: AppColors.accent, size: 22),
          const SizedBox(width: 10),
          Text('착용 $count/12',
              style: const TextStyle(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.bold,
                  fontSize: 14)),
          const Spacer(),
          _Bonus(
              icon: Icons.gavel,
              label: '공격',
              value: equipment.attackBonus,
              color: AppColors.hp),
          const SizedBox(width: 10),
          _Bonus(
              icon: Icons.shield,
              label: '방어',
              value: equipment.defenseBonus,
              color: AppColors.mp),
        ],
      ),
    );
  }
}

class _Bonus extends StatelessWidget {
  const _Bonus({
    required this.icon,
    required this.label,
    required this.value,
    required this.color,
  });

  final IconData icon;
  final String label;
  final int value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 14, color: color),
        const SizedBox(width: 3),
        Text('+$value',
            style: TextStyle(
                color: color, fontWeight: FontWeight.bold, fontSize: 13)),
      ],
    );
  }
}

class _SlotCard extends StatelessWidget {
  const _SlotCard({
    required this.slot,
    required this.item,
    required this.onUnequip,
  });

  final EquipmentSlot slot;
  final EquippedItem? item;
  final void Function(EquipmentSlot, EquippedItem) onUnequip;

  @override
  Widget build(BuildContext context) {
    final config = kSlotConfig[slot]!;
    final equipped = item;
    final color =
        equipped != null ? rarityColor(equipped.rarity) : AppColors.border;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: equipped != null
              ? color.withValues(alpha: 0.7)
              : AppColors.border,
          width: equipped != null ? 1.4 : 1,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 34,
            height: 34,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.backgroundDeep.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(8),
            ),
            child: equipped != null
                ? Text(equipped.icon, style: const TextStyle(fontSize: 18))
                : Icon(config.icon, size: 16, color: AppColors.textFaint),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(config.nameKo,
                    style: const TextStyle(
                        fontSize: 10, color: AppColors.textFaint)),
                const SizedBox(height: 1),
                Text(
                  equipped?.itemName ?? '비어있음',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: equipped != null ? color : AppColors.textFaint,
                  ),
                ),
              ],
            ),
          ),
          if (equipped != null)
            IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              visualDensity: VisualDensity.compact,
              icon: const Icon(Icons.close, size: 18, color: AppColors.danger),
              tooltip: '해제',
              onPressed: () => onUnequip(slot, equipped),
            ),
        ],
      ),
    );
  }
}
