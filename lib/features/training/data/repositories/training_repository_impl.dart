import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/api_exception.dart';
import '../../domain/entities/proficiency.dart';
import '../../domain/entities/train_result.dart';
import '../../domain/entities/trainer.dart';
import '../../domain/repositories/training_repository.dart';
import '../datasources/trainer_local_datasource.dart';
import '../datasources/training_api.dart';
import '../models/train_dto.dart';

part 'training_repository_impl.g.dart';

class TrainingRepositoryImpl implements TrainingRepository {
  TrainingRepositoryImpl(this._api, this._local);

  final TrainingApi _api;
  final TrainerLocalDataSource _local;

  @override
  Future<List<Trainer>> getTrainers() async {
    final dtos = await _local.loadTrainers();
    return dtos.map((d) => d.toEntity()).toList();
  }

  @override
  Future<List<Proficiency>> getProficiencies() async {
    try {
      final res = await _api.getProficiencies();
      final values = res.data;
      return kProficiencyDefs
          .map((def) => Proficiency(
                def: def,
                value: (values[def.id] ?? 0).round().clamp(0, kMaxProficiency),
              ))
          .toList();
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  @override
  Future<TrainResult> train(String proficiencyType) async {
    try {
      final res =
          await _api.train(TrainRequestDto(proficiencyType: proficiencyType));
      return res.toEntity();
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }
}

@Riverpod(keepAlive: true)
TrainingRepository trainingRepository(Ref ref) => TrainingRepositoryImpl(
      ref.watch(trainingApiProvider),
      ref.watch(trainerLocalDataSourceProvider),
    );
