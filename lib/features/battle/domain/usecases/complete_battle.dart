import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/battle_repository_impl.dart';
import '../entities/battle_result.dart';
import '../repositories/battle_repository.dart';

part 'complete_battle.g.dart';

class CompleteBattle {
  const CompleteBattle(this._repository);

  final BattleRepository _repository;

  Future<BattleReward> call({
    required String battleToken,
    required String result,
    required int currentHp,
    required int currentMp,
  }) =>
      _repository.complete(
        battleToken: battleToken,
        result: result,
        currentHp: currentHp,
        currentMp: currentMp,
      );
}

@riverpod
CompleteBattle completeBattle(Ref ref) =>
    CompleteBattle(ref.watch(battleRepositoryProvider));
