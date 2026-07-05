import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/quest_repository_impl.dart';
import '../repositories/quest_repository.dart';

part 'accept_quest.g.dart';

class AcceptQuest {
  const AcceptQuest(this._repository);

  final QuestRepository _repository;

  Future<void> call(String questId) => _repository.accept(questId);
}

@riverpod
AcceptQuest acceptQuest(Ref ref) =>
    AcceptQuest(ref.watch(questRepositoryProvider));
