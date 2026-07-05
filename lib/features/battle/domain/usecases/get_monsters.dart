import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/battle_repository_impl.dart';
import '../entities/monster.dart';
import '../repositories/battle_repository.dart';

part 'get_monsters.g.dart';

class GetMonsters {
  const GetMonsters(this._repository);

  final BattleRepository _repository;

  Future<List<Monster>> call() => _repository.getMonsters();
}

@riverpod
GetMonsters getMonsters(Ref ref) =>
    GetMonsters(ref.watch(battleRepositoryProvider));
