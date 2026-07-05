import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/training_repository_impl.dart';
import '../entities/proficiency.dart';
import '../repositories/training_repository.dart';

part 'get_proficiencies.g.dart';

class GetProficiencies {
  const GetProficiencies(this._repository);

  final TrainingRepository _repository;

  Future<List<Proficiency>> call() => _repository.getProficiencies();
}

@riverpod
GetProficiencies getProficiencies(Ref ref) =>
    GetProficiencies(ref.watch(trainingRepositoryProvider));
