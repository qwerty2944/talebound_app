import '../entities/quest.dart';

abstract interface class QuestRepository {
  /// 전체 퀘스트 목록 + 유저 상태/진행도.
  Future<List<Quest>> getQuests();

  /// 퀘스트 수락 (409 이미 수락, 400 LEVEL_TOO_LOW).
  Future<void> accept(String questId);

  /// 보상 수령 (400 OBJECTIVE_INCOMPLETE, 409 ALREADY_CLAIMED).
  Future<QuestClaimResult> claim(String questId);
}
