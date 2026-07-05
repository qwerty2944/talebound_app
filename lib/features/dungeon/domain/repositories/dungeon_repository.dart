import '../entities/dungeon.dart';
import '../entities/dungeon_run.dart';

abstract interface class DungeonRepository {
  /// 입장 가능한 던전 목록 (번들 asset).
  Future<List<Dungeon>> getDungeons();

  /// 던전 입장 — 피로도 소모 + 첫 웨이브 토큰 발급.
  /// (400 LEVEL_TOO_LOW, 409 NOT_ENOUGH_FATIGUE)
  Future<DungeonRunState> start(String dungeonId);

  /// 현재 웨이브 승리 정산 → 다음 웨이브 or 클리어 보상.
  Future<DungeonAdvanceResult> advance({
    required String runToken,
    required String battleToken,
    required int currentHp,
    required int currentMp,
  });
}
