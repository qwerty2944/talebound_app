/// 전투 대상 몬스터 (번들 asset 기반). 보스는 이번 MVP 범위 밖이라 제외한다.
class Monster {
  const Monster({
    required this.id,
    required this.nameKo,
    required this.icon,
    required this.rank,
    required this.level,
    required this.element,
    required this.mapIds,
    required this.hp,
    required this.attack,
    required this.defense,
    required this.speed,
    required this.exp,
    required this.gold,
  });

  final String id;
  final String nameKo;
  final String icon;
  final String rank;
  final int level;
  final String element;
  final List<String> mapIds;
  final int hp;
  final int attack;
  final int defense;
  final int speed;
  final int exp;
  final int gold;
}
