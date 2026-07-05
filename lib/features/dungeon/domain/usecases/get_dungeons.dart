import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/dungeon_repository_impl.dart';
import '../entities/dungeon.dart';
import '../repositories/dungeon_repository.dart';

part 'get_dungeons.g.dart';

class GetDungeons {
  const GetDungeons(this._repository);

  final DungeonRepository _repository;

  Future<List<Dungeon>> call() => _repository.getDungeons();
}

@riverpod
GetDungeons getDungeons(Ref ref) =>
    GetDungeons(ref.watch(dungeonRepositoryProvider));
