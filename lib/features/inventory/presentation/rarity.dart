import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';

/// 웹 RARITY_CONFIG(아키에이지 13단계) 색상/이름 매핑.
const Map<String, Color> _rarityColors = {
  'crude': Color(0xFF6B7280),
  'common': Color(0xFFD1D5DB),
  'grand': Color(0xFF22C55E),
  'rare': Color(0xFF3B82F6),
  'arcane': Color(0xFFEAB308),
  'heroic': Color(0xFFF97316),
  'unique': Color(0xFFA855F7),
  'celestial': Color(0xFFEF4444),
  'divine': Color(0xFFEC4899),
  'epic': Color(0xFF06B6D4),
  'legendary': Color(0xFFF59E0B),
  'mythic': Color(0xFFFF6B6B),
  'eternal': Color(0xFFFFD700),
};

const Map<String, String> _rarityNames = {
  'crude': '저급',
  'common': '일반',
  'grand': '고급',
  'rare': '희귀',
  'arcane': '고대',
  'heroic': '영웅',
  'unique': '유일',
  'celestial': '유물',
  'divine': '경이',
  'epic': '서사',
  'legendary': '전설',
  'mythic': '신화',
  'eternal': '태초',
};

Color rarityColor(String? rarity) =>
    _rarityColors[rarity] ?? AppColors.rarityCommon;

String rarityNameKo(String? rarity) => _rarityNames[rarity] ?? '일반';

/// 스탯 키 → 한글 라벨(장비 표시용).
const Map<String, String> kStatLabels = {
  'physicalAttack': '물리공격',
  'magicAttack': '마법공격',
  'physicalDefense': '물리방어',
  'magicDefense': '마법방어',
  'attack': '공격',
  'defense': '방어',
  'magic': '마법',
  'hp': '체력',
  'mp': '마나',
  'speed': '속도',
  'critRate': '치명타율',
  'critDamage': '치명피해',
  'str': '힘',
  'dex': '민첩',
  'con': '체질',
  'int': '지능',
  'wis': '지혜',
  'cha': '매력',
  'lck': '행운',
  'blockChance': '막기',
  'dodgeChance': '회피',
};

String statLabel(String key) => kStatLabels[key] ?? key;
