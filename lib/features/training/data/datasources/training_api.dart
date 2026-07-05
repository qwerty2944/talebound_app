import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/api_client.dart';
import '../models/train_dto.dart';

part 'training_api.g.dart';

@RestApi()
abstract class TrainingApi {
  factory TrainingApi(Dio dio, {String? baseUrl}) = _TrainingApi;

  @GET('/proficiencies')
  Future<ProficiencyEnvelopeDto> getProficiencies();

  @POST('/training/train')
  Future<TrainResponseDto> train(@Body() TrainRequestDto body);
}

@Riverpod(keepAlive: true)
TrainingApi trainingApi(Ref ref) => TrainingApi(ref.watch(dioProvider));
