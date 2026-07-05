import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/training_repository_impl.dart';
import '../entities/train_result.dart';
import '../repositories/training_repository.dart';

part 'train_proficiency.g.dart';

class TrainProficiency {
  const TrainProficiency(this._repository);

  final TrainingRepository _repository;

  Future<TrainResult> call(String proficiencyType) =>
      _repository.train(proficiencyType);
}

@riverpod
TrainProficiency trainProficiency(Ref ref) =>
    TrainProficiency(ref.watch(trainingRepositoryProvider));
