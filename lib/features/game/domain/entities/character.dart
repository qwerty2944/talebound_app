/// 게임 홈에 표시할 캐릭터 요약. current_hp/mp가 null이면 최대치로 간주한다.
class Character {
  const Character({
    required this.name,
    required this.level,
    required this.experience,
    required this.gold,
    required this.gems,
    required this.currentHp,
    required this.maxHp,
    required this.currentMp,
    required this.maxMp,
    required this.fatigue,
    required this.maxFatigue,
    required this.mapId,
    required this.stats,
  });

  final String name;
  final int level;
  final int experience;
  final int gold;
  final int gems;
  final int currentHp;
  final int maxHp;
  final int currentMp;
  final int maxMp;
  final int fatigue;
  final int maxFatigue;
  final String mapId;
  final CharacterStats stats;

  /// 다음 레벨까지 필요 경험치 (백엔드 applyLevelUps: level × 100).
  int get expToNextLevel => level * 100;
}

class CharacterStats {
  const CharacterStats({
    required this.str,
    required this.dex,
    required this.con,
    required this.intelligence,
    required this.wis,
    required this.cha,
    required this.lck,
  });

  final int str;
  final int dex;
  final int con;
  final int intelligence;
  final int wis;
  final int cha;
  final int lck;
}
