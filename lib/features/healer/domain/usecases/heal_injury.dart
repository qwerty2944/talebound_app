import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/healer_repository_impl.dart';
import '../entities/heal_outcome.dart';
import '../repositories/healer_repository.dart';

part 'heal_injury.g.dart';

class HealInjury {
  const HealInjury(this._repository);

  final HealerRepository _repository;

  Future<HealOutcome> call({
    required String npcId,
    required int injuryIndex,
  }) =>
      _repository.heal(npcId: npcId, injuryIndex: injuryIndex);
}

@riverpod
HealInjury healInjury(Ref ref) =>
    HealInjury(ref.watch(healerRepositoryProvider));
