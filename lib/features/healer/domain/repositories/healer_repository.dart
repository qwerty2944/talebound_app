import '../entities/heal_outcome.dart';
import '../entities/healer.dart';

abstract interface class HealerRepository {
  /// 번들 asset에서 치료사 목록을 읽는다.
  Future<List<Healer>> getHealers();

  /// 서버에 부상 치료를 요청한다(비용 계산·검증은 서버 권위).
  Future<HealOutcome> heal({required String npcId, required int injuryIndex});
}
