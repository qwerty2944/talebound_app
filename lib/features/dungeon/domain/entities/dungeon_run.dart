import 'dungeon.dart';

/// 던전 웨이브 보상(개별 전투 정산).
class WaveReward {
  const WaveReward({
    required this.exp,
    required this.gold,
    required this.drops,
  });

  final int exp;
  final int gold;
  final List<DungeonRewardItem> drops;
}

/// `/api/dungeon/start` 결과 — 첫 웨이브 상태.
class DungeonRunState {
  const DungeonRunState({
    required this.wave,
    required this.totalWaves,
    required this.monsterId,
    required this.monsterLevel,
    required this.battleToken,
    required this.runToken,
  });

  final int wave; // 0-based 현재 웨이브 인덱스
  final int totalWaves;
  final String monsterId;
  final int monsterLevel;
  final String battleToken;
  final String runToken;

  int get waveNumber => wave + 1;
}

/// `/api/dungeon/advance` 결과.
/// cleared=false → 다음 웨이브(next) 존재. cleared=true → 던전 클리어(clear).
class DungeonAdvanceResult {
  const DungeonAdvanceResult({
    required this.cleared,
    required this.totalWaves,
    required this.waveReward,
    this.next,
    this.clearExp = 0,
    this.clearGold = 0,
    this.clearItems = const [],
    this.leveledUp = false,
    this.newLevel = 0,
  });

  final bool cleared;
  final int totalWaves;
  final WaveReward waveReward;

  /// cleared=false 일 때 다음 웨이브 상태.
  final DungeonRunState? next;

  /// cleared=true 일 때 클리어 보상.
  final int clearExp;
  final int clearGold;
  final List<DungeonRewardItem> clearItems;
  final bool leveledUp;
  final int newLevel;
}
