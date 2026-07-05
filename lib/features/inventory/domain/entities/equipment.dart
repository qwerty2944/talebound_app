import 'package:flutter/material.dart';

/// 12 장비 슬롯(웹 SLOT_CONFIG 동일). 모바일 장비 화면도 12슬롯 전부 노출한다.
enum EquipmentSlot {
  mainHand,
  offHand,
  helmet,
  armor,
  cloth,
  pants,
  ring1,
  ring2,
  necklace,
  earring1,
  earring2,
  bracelet,
}

enum SlotCategory { weapon, armor, accessory }

class SlotConfig {
  const SlotConfig(this.nameKo, this.icon, this.category);
  final String nameKo;
  final IconData icon;
  final SlotCategory category;
}

const Map<EquipmentSlot, SlotConfig> kSlotConfig = {
  EquipmentSlot.mainHand:
      SlotConfig('주무기', Icons.colorize, SlotCategory.weapon),
  EquipmentSlot.offHand: SlotConfig('보조', Icons.shield, SlotCategory.weapon),
  EquipmentSlot.helmet:
      SlotConfig('투구', Icons.sports_motorsports, SlotCategory.armor),
  EquipmentSlot.armor: SlotConfig('갑옷', Icons.security, SlotCategory.armor),
  EquipmentSlot.cloth: SlotConfig('의복', Icons.checkroom, SlotCategory.armor),
  EquipmentSlot.pants:
      SlotConfig('바지', Icons.airline_seat_legroom_normal, SlotCategory.armor),
  EquipmentSlot.ring1: SlotConfig('반지1', Icons.circle, SlotCategory.accessory),
  EquipmentSlot.ring2: SlotConfig('반지2', Icons.circle, SlotCategory.accessory),
  EquipmentSlot.necklace:
      SlotConfig('목걸이', Icons.brightness_7, SlotCategory.accessory),
  EquipmentSlot.earring1:
      SlotConfig('귀걸이1', Icons.auto_awesome, SlotCategory.accessory),
  EquipmentSlot.earring2:
      SlotConfig('귀걸이2', Icons.auto_awesome, SlotCategory.accessory),
  EquipmentSlot.bracelet:
      SlotConfig('팔찌', Icons.radio_button_unchecked, SlotCategory.accessory),
};

EquipmentSlot? equipmentSlotFromKey(String key) {
  for (final s in EquipmentSlot.values) {
    if (s.name == key) return s;
  }
  return null;
}

/// 장착된 아이템(스탯은 착용 시점에 박아둔 값).
class EquippedItem {
  const EquippedItem({
    required this.itemId,
    required this.itemName,
    required this.itemType,
    required this.icon,
    this.rarity,
    this.handType,
    this.offHandType,
    this.attackSpeed,
    this.accessoryType,
    this.stats = const {},
  });

  final String itemId;
  final String itemName;
  final String itemType;
  final String icon;
  final String? rarity;
  final String? handType;
  final String? offHandType;
  final double? attackSpeed;
  final String? accessoryType;
  final Map<String, num> stats;

  bool get isTwoHanded => handType == 'two_handed';

  num stat(String key) => stats[key] ?? 0;
}

/// 12슬롯 장착 상태 + 총합 스탯 계산.
class Equipment {
  const Equipment(this.slots);

  final Map<EquipmentSlot, EquippedItem> slots;

  static const Equipment empty = Equipment({});

  EquippedItem? item(EquipmentSlot slot) => slots[slot];

  bool get isEmpty => slots.isEmpty;

  /// 슬롯 스탯 합산.
  num _sum(String key) {
    num total = 0;
    for (final it in slots.values) {
      total += it.stat(key);
    }
    return total;
  }

  /// 전투용 공격 보너스: 물리공격 + 마법공격.
  int get attackBonus =>
      (_sum('physicalAttack') + _sum('magicAttack')).round();

  /// 전투용 방어 보너스: 물리방어 + 마법방어.
  int get defenseBonus =>
      (_sum('physicalDefense') + _sum('magicDefense')).round();

  /// 능력치(str/dex/...) 보너스 합.
  int statBonus(String key) => _sum(key).round();
}
