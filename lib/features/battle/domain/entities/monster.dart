/// 전투 대상 몬스터 (번들 asset 기반). rank == 'boss'는 보스전(유니티 연출) 대상.
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
