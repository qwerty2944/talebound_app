import '../entities/proficiency.dart';
import '../entities/train_result.dart';
import '../entities/trainer.dart';

abstract class TrainingRepository {
  /// 훈련사 목록(로컬 asset).
  Future<List<Trainer>> getTrainers();

  /// 20종 숙련 목록(현재값 병합). 서버에 값이 없으면 0으로 채운다.
  Future<List<Proficiency>> getProficiencies();

  Future<TrainResult> train(String proficiencyType);
}
