/// items.json 에서 해석한 아이템 메타(도메인).
class GameItem {
  const GameItem({
    required this.id,
    required this.nameKo,
    required this.type,
    this.subtype,
    this.rarity = 'common',
    this.value = 0,
    this.stackable = false,
    this.weaponType,
    this.slot,
    this.stats = const {},
    this.requirements = const {},
    this.icon,
  });

  final String id;
  final String nameKo;
  final String type; // equipment | consumable | material | misc
  final String? subtype; // weapon | armor | accessory | food ...
  final String rarity;
  final int value;
  final bool stackable;
  final String? weaponType;
  final String? slot;
  final Map<String, num> stats;
  final Map<String, num> requirements;
  final String? icon;

  bool get isEquipment =>
      type == 'equipment' &&
      (subtype == 'weapon' || subtype == 'armor' || subtype == 'accessory');

  int get requiredLevel => (requirements['level'] ?? 1).toInt();
}

/// 인벤토리 한 슬롯 = 아이템 메타 + 수량 + 슬롯 번호.
class InventoryEntry {
  const InventoryEntry({
    required this.slot,
    required this.itemId,
    required this.quantity,
    required this.item,
  });

  final int slot;
  final String itemId;
  final int quantity;

  /// items.json 에 없으면 null (미확인 아이템).
  final GameItem? item;

  String get displayName => item?.nameKo ?? itemId;
  String get rarity => item?.rarity ?? 'common';
  String get type => item?.type ?? 'misc';
  bool get isEquipment => item?.isEquipment ?? false;
}
