import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/quest_repository_impl.dart';
import '../entities/quest.dart';
import '../repositories/quest_repository.dart';

part 'get_quests.g.dart';

class GetQuests {
  const GetQuests(this._repository);

  final QuestRepository _repository;

  Future<List<Quest>> call() => _repository.getQuests();
}

@riverpod
GetQuests getQuests(Ref ref) => GetQuests(ref.watch(questRepositoryProvider));
