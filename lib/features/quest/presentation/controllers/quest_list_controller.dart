import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/quest.dart';
import '../../domain/usecases/accept_quest.dart';
import '../../domain/usecases/claim_quest.dart';
import '../../domain/usecases/get_quests.dart';

part 'quest_list_controller.g.dart';

/// 퀘스트 목록 상태 + 수락/수령 액션.
/// 액션 후 목록을 다시 불러와 상태/진행도를 최신화한다.
@riverpod
class QuestListController extends _$QuestListController {
  @override
  Future<List<Quest>> build() => ref.watch(getQuestsProvider).call();

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => ref.read(getQuestsProvider).call());
  }

  /// 수락. 성공 시 목록 갱신. 실패 시 ApiException을 그대로 던진다.
  Future<void> accept(String questId) async {
    await ref.read(acceptQuestProvider).call(questId);
    await refresh();
  }

  /// 보상 수령. 성공 시 결과를 반환하고 목록을 갱신한다.
  Future<QuestClaimResult> claim(String questId) async {
    final result = await ref.read(claimQuestProvider).call(questId);
    await refresh();
    return result;
  }
}
