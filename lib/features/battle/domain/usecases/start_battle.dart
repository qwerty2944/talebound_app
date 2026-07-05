import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/battle_repository_impl.dart';
import '../entities/battle_result.dart';
import '../repositories/battle_repository.dart';

part 'start_battle.g.dart';

class StartBattle {
  const StartBattle(this._repository);

  final BattleRepository _repository;

  Future<StartedBattle> call(String monsterId) => _repository.start(monsterId);
}

@riverpod
StartBattle startBattle(Ref ref) =>
    StartBattle(ref.watch(battleRepositoryProvider));
