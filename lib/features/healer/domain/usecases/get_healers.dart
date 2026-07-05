import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/healer_repository_impl.dart';
import '../entities/healer.dart';
import '../repositories/healer_repository.dart';

part 'get_healers.g.dart';

class GetHealers {
  const GetHealers(this._repository);

  final HealerRepository _repository;

  Future<List<Healer>> call() => _repository.getHealers();
}

@riverpod
GetHealers getHealers(Ref ref) =>
    GetHealers(ref.watch(healerRepositoryProvider));
