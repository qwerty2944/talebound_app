/// `/api/battle/start` 결과.
class StartedBattle {
  const StartedBattle({required this.battleToken, required this.monsterLevel});

  final String battleToken;
  final int monsterLevel;
}

/// `/api/battle/complete` 서버 정산 결과.
class BattleReward {
  const BattleReward({
    required this.result,
    required this.exp,
    required this.gold,
    required this.drops,
    required this.leveledUp,
    required this.newLevel,
    required this.totalGold,
    required this.totalExp,
  });

  final String result; // victory / defeat / fled
  final int exp;
  final int gold;
  final List<BattleDrop> drops;
  final bool leveledUp;
  final int newLevel;
  final int totalGold;
  final int totalExp;
}

class BattleDrop {
  const BattleDrop({required this.itemId, required this.quantity});

  final String itemId;
  final int quantity;
}
