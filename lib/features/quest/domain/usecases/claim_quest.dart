import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/quest_repository_impl.dart';
import '../entities/quest.dart';
import '../repositories/quest_repository.dart';

part 'claim_quest.g.dart';

class ClaimQuest {
  const ClaimQuest(this._repository);

  final QuestRepository _repository;

  Future<QuestClaimResult> call(String questId) => _repository.claim(questId);
}

@riverpod
ClaimQuest claimQuest(Ref ref) =>
    ClaimQuest(ref.watch(questRepositoryProvider));
