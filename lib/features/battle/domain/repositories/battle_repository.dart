import '../entities/battle_result.dart';
import '../entities/monster.dart';

abstract interface class BattleRepository {
  /// 사냥 가능한 몬스터 목록 (레벨 오름차순).
  Future<List<Monster>> getMonsters();

  /// 전투 시작 — 피로도 소모 + 전투 토큰 발급.
  Future<StartedBattle> start(String monsterId);

  /// 전투 종료 정산 (승리 시 서버가 exp/gold/드랍 지급).
  Future<BattleReward> complete({
    required String battleToken,
    required String result,
    required int currentHp,
    required int currentMp,
  });
}
