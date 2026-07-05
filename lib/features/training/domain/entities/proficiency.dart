import 'dart:math' as math;

const int kMaxProficiency = 100;
const int kProficiencyGain = 2;

/// 수련 비용 = 50 + floor(현재값^1.35). 백엔드 trainCost와 동일.
int trainingCost(int value) => 50 + math.pow(value, 1.35).floor();

/// 숙련 분류(무기/마법).
enum ProficiencyCategory { weapon, magic }

/// 숙련 정의(웹 ALL_PROFICIENCIES와 동일한 20종 순서/한글명/아이콘).
class ProficiencyDef {
  const ProficiencyDef(this.id, this.nameKo, this.icon, this.category);

  final String id;
  final String nameKo;
  final String icon;
  final ProficiencyCategory category;
}

const List<ProficiencyDef> kProficiencyDefs = [
  ProficiencyDef('light_sword', '세검', '🗡️', ProficiencyCategory.weapon),
  ProficiencyDef('medium_sword', '중검', '⚔️', ProficiencyCategory.weapon),
  ProficiencyDef('great_sword', '대검', '🗡️', ProficiencyCategory.weapon),
  ProficiencyDef('axe', '도끼', '🪓', ProficiencyCategory.weapon),
  ProficiencyDef('mace', '둔기', '🔨', ProficiencyCategory.weapon),
  ProficiencyDef('dagger', '단검', '🔪', ProficiencyCategory.weapon),
  ProficiencyDef('spear', '창', '🔱', ProficiencyCategory.weapon),
  ProficiencyDef('bow', '활', '🏹', ProficiencyCategory.weapon),
  ProficiencyDef('crossbow', '석궁', '🎯', ProficiencyCategory.weapon),
  ProficiencyDef('staff', '지팡이', '🪄', ProficiencyCategory.weapon),
  ProficiencyDef('fist', '맨손', '👊', ProficiencyCategory.weapon),
  ProficiencyDef('shield', '방패', '🛡️', ProficiencyCategory.weapon),
  ProficiencyDef('fire', '화염', '🔥', ProficiencyCategory.magic),
  ProficiencyDef('ice', '냉기', '❄️', ProficiencyCategory.magic),
  ProficiencyDef('lightning', '번개', '⚡', ProficiencyCategory.magic),
  ProficiencyDef('earth', '대지', '🪨', ProficiencyCategory.magic),
  ProficiencyDef('holy', '신성', '✨', ProficiencyCategory.magic),
  ProficiencyDef('dark', '암흑', '🌑', ProficiencyCategory.magic),
  ProficiencyDef('poison', '독', '☠️', ProficiencyCategory.magic),
  ProficiencyDef('arcane', '비전', '🔮', ProficiencyCategory.magic),
];

/// 숙련 등급(웹 getRankInfo와 동일: 값 구간별 칭호).
String proficiencyRankKo(int value) {
  if (value >= 100) return '대가';
  if (value >= 80) return '달인';
  if (value >= 60) return '전문가';
  if (value >= 40) return '숙련';
  if (value >= 20) return '견습';
  return '초보';
}

/// 숙련 정의 + 현재값.
class Proficiency {
  const Proficiency({required this.def, required this.value});

  final ProficiencyDef def;
  final int value;

  bool get isMaxed => value >= kMaxProficiency;
  int get cost => trainingCost(value);
  String get rankKo => proficiencyRankKo(value);
}
