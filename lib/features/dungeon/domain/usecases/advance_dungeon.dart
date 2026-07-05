import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/dungeon_repository_impl.dart';
import '../entities/dungeon_run.dart';
import '../repositories/dungeon_repository.dart';

part 'advance_dungeon.g.dart';

class AdvanceDungeon {
  const AdvanceDungeon(this._repository);

  final DungeonRepository _repository;

  Future<DungeonAdvanceResult> call({
    required String runToken,
    required String battleToken,
    required int currentHp,
    required int currentMp,
  }) =>
      _repository.advance(
        runToken: runToken,
        battleToken: battleToken,
        currentHp: currentHp,
        currentMp: currentMp,
      );
}

@riverpod
AdvanceDungeon advanceDungeon(Ref ref) =>
    AdvanceDungeon(ref.watch(dungeonRepositoryProvider));
