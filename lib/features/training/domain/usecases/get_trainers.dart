import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/training_repository_impl.dart';
import '../entities/trainer.dart';
import '../repositories/training_repository.dart';

part 'get_trainers.g.dart';

class GetTrainers {
  const GetTrainers(this._repository);

  final TrainingRepository _repository;

  Future<List<Trainer>> call() => _repository.getTrainers();
}

@riverpod
GetTrainers getTrainers(Ref ref) =>
    GetTrainers(ref.watch(trainingRepositoryProvider));
