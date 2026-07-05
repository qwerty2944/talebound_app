import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/dungeon_repository_impl.dart';
import '../entities/dungeon_run.dart';
import '../repositories/dungeon_repository.dart';

part 'start_dungeon.g.dart';

class StartDungeon {
  const StartDungeon(this._repository);

  final DungeonRepository _repository;

  Future<DungeonRunState> call(String dungeonId) =>
      _repository.start(dungeonId);
}

@riverpod
StartDungeon startDungeon(Ref ref) =>
    StartDungeon(ref.watch(dungeonRepositoryProvider));
