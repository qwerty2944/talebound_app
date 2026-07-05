import 'package:flutter/material.dart';

import '../../../../core/theme/app_theme.dart';

/// 아이템 등급(rarity) — 웹 RARITY_CONFIG와 동일한 한글명/색 체계.
enum ItemRarity {
  crude('저급', Color(0xFF6B7280)),
  common('일반', Color(0xFFD1D5DB)),
  grand('고급', Color(0xFF22C55E)),
  rare('희귀', Color(0xFF3B82F6)),
  arcane('고대', Color(0xFFEAB308)),
  heroic('영웅', Color(0xFFF97316)),
  unique('유일', Color(0xFFA855F7)),
  celestial('유물', Color(0xFFEF4444)),
  divine('경이', Color(0xFFEC4899)),
  epic('서사', Color(0xFF06B6D4)),
  legendary('전설', Color(0xFFF59E0B));

  const ItemRarity(this.nameKo, this.color);

  final String nameKo;
  final Color color;

  static ItemRarity fromId(String id) {
    for (final r in ItemRarity.values) {
      if (r.name == id) return r;
    }
    return ItemRarity.common;
  }
}

/// 아이템 타입/서브타입 → 표시용 이모지 아이콘.
/// (아이템 데이터에 통일된 이모지가 없어 타입 기준으로 매핑한다.)
String itemEmoji({required String type, required String subtype, String? weaponType}) {
  switch (weaponType) {
    case 'sword':
      return '🗡️';
    case 'axe':
      return '🪓';
    case 'mace':
      return '🔨';
    case 'dagger':
      return '🔪';
    case 'spear':
      return '🔱';
    case 'bow':
      return '🏹';
    case 'crossbow':
      return '🎯';
    case 'staff':
    case 'wand':
      return '🪄';
  }
  switch (subtype) {
    case 'weapon':
      return '⚔️';
    case 'armor':
    case 'chest':
      return '🥋';
    case 'helmet':
    case 'head':
      return '⛑️';
    case 'pants':
    case 'legs':
      return '👖';
    case 'shield':
      return '🛡️';
    case 'boots':
    case 'feet':
      return '🥾';
    case 'gloves':
    case 'hands':
      return '🧤';
    case 'ring':
      return '💍';
    case 'necklace':
    case 'amulet':
      return '📿';
    case 'cloak':
    case 'back':
      return '🧣';
    case 'potion':
      return '🧪';
    case 'food':
      return '🍖';
    case 'scroll':
      return '📜';
  }
  switch (type) {
    case 'consumable':
      return '🧪';
    case 'equipment':
      return '⚔️';
    case 'material':
      return '🪵';
    default:
      return '📦';
  }
}

/// 등급색이 배경 위에서 잘 보이도록 하한 밝기를 보정(어두운 등급은 카드 tint용으로 부적합).
Color rarityTint(ItemRarity rarity) =>
    rarity == ItemRarity.common ? AppColors.borderStrong : rarity.color;
