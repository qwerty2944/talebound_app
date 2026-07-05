import '../entities/equipment.dart';
import '../entities/game_item.dart';

/// 웹 `entities/item/lib/equip.ts` 포팅:
/// items.json 아이템 → 장착 슬롯 판정 / EquippedItem 변환 / 스탯 해석.
class EquipLogic {
  const EquipLogic._();

  static const Set<String> _twoHanded = {
    'bow',
    'crossbow',
    'spear',
    'great_sword',
  };

  static const Set<String> _magicWeapons = {'wand', 'staff'};

  static const Map<String, String> _weaponToProficiency = {
    'sword': 'medium_sword',
    'light_sword': 'light_sword',
    'medium_sword': 'medium_sword',
    'great_sword': 'great_sword',
    'wand': 'staff',
    'staff': 'staff',
    'bow': 'bow',
    'crossbow': 'crossbow',
    'axe': 'axe',
    'mace': 'mace',
    'dagger': 'dagger',
    'spear': 'spear',
    'shield': 'shield',
    'fist': 'fist',
  };

  static const Map<String, String> _weaponIcon = {
    'sword': '⚔️',
    'light_sword': '🗡️',
    'medium_sword': '⚔️',
    'great_sword': '🗡️',
    'axe': '🪓',
    'mace': '🔨',
    'dagger': '🔪',
    'spear': '🔱',
    'bow': '🏹',
    'crossbow': '🎯',
    'wand': '🪄',
    'staff': '🪄',
    'shield': '🛡️',
  };

  static String _iconFor(GameItem item) {
    if (item.subtype == 'weapon' && item.weaponType != null) {
      return _weaponIcon[item.weaponType] ?? '⚔️';
    }
    if (item.subtype == 'armor') return '🛡️';
    if (item.subtype == 'accessory') return '💍';
    return '📦';
  }

  /// items.json stats → 전투 반영용 스탯.
  /// damage → physicalAttack(마법무기는 magicAttack), defense → physicalDefense,
  /// attackSpeed/range 는 스킵, 나머지(str/dex/hp/critRate...)는 통과.
  static Map<String, num> itemToStats(GameItem item) {
    final isMagic =
        item.weaponType != null && _magicWeapons.contains(item.weaponType);
    final out = <String, num>{};
    item.stats.forEach((key, value) {
      if (key == 'damage') {
        final target = isMagic ? 'magicAttack' : 'physicalAttack';
        out[target] = (out[target] ?? 0) + value;
      } else if (key == 'defense') {
        out['physicalDefense'] = (out['physicalDefense'] ?? 0) + value;
      } else if (key == 'attackSpeed' || key == 'range') {
        // 스킵
      } else {
        out[key] = (out[key] ?? 0) + value;
      }
    });
    return out;
  }

  /// 아이템 → 장착 슬롯 자동 판정. occupied: 현재 착용중 슬롯 여부.
  static EquipmentSlot? resolveSlot(
    GameItem item, {
    Map<EquipmentSlot, bool> occupied = const {},
  }) {
    switch (item.subtype) {
      case 'weapon':
        return item.weaponType == 'shield'
            ? EquipmentSlot.offHand
            : EquipmentSlot.mainHand;
      case 'armor':
        switch (item.slot) {
          case 'helmet':
            return EquipmentSlot.helmet;
          case 'armor':
            return EquipmentSlot.armor;
          case 'cloth':
            return EquipmentSlot.cloth;
          case 'pant':
          case 'pants':
            return EquipmentSlot.pants;
          default:
            return null; // back(망토) 등 12슬롯 밖
        }
      case 'accessory':
        switch (item.slot) {
          case 'necklace':
            return EquipmentSlot.necklace;
          case 'bracelet':
            return EquipmentSlot.bracelet;
          case 'ring':
            return (occupied[EquipmentSlot.ring1] != true)
                ? EquipmentSlot.ring1
                : (occupied[EquipmentSlot.ring2] != true)
                    ? EquipmentSlot.ring2
                    : EquipmentSlot.ring1;
          case 'earring':
            return (occupied[EquipmentSlot.earring1] != true)
                ? EquipmentSlot.earring1
                : (occupied[EquipmentSlot.earring2] != true)
                    ? EquipmentSlot.earring2
                    : EquipmentSlot.earring1;
          default:
            return null;
        }
      default:
        return null;
    }
  }

  /// 아이템 → 장착 아이템(스탯 박아넣기).
  static EquippedItem toEquippedItem(GameItem item) {
    final isShield = item.weaponType == 'shield';
    final isWeapon = item.subtype == 'weapon';

    final itemType = item.weaponType != null
        ? (_weaponToProficiency[item.weaponType] ?? item.weaponType!)
        : (item.subtype ?? 'misc');

    String? handType;
    String? offHandType;
    if (isWeapon) {
      if (isShield) {
        offHandType = 'shield';
      } else {
        handType = (item.weaponType != null &&
                _twoHanded.contains(item.weaponType))
            ? 'two_handed'
            : 'one_handed';
      }
    }

    String? accessoryType;
    if (item.subtype == 'accessory') {
      const acc = {'ring', 'necklace', 'earring', 'bracelet'};
      if (acc.contains(item.slot)) accessoryType = item.slot;
    }

    final attackSpeed = item.stats['attackSpeed'];

    return EquippedItem(
      itemId: item.id,
      itemName: item.nameKo,
      itemType: itemType,
      icon: _iconFor(item),
      rarity: item.rarity,
      handType: handType,
      offHandType: offHandType,
      attackSpeed: attackSpeed?.toDouble(),
      accessoryType: accessoryType,
      stats: itemToStats(item),
    );
  }
}
