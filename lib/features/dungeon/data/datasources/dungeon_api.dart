import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/api_client.dart';
import '../models/dungeon_run_dto.dart';

part 'dungeon_api.g.dart';

@RestApi()
abstract class DungeonApi {
  factory DungeonApi(Dio dio, {String? baseUrl}) = _DungeonApi;

  @POST('/dungeon/start')
  Future<DungeonStartResponseDto> start(@Body() DungeonStartRequestDto body);

  @POST('/dungeon/advance')
  Future<DungeonAdvanceResponseDto> advance(
      @Body() DungeonAdvanceRequestDto body);
}

@Riverpod(keepAlive: true)
DungeonApi dungeonApi(Ref ref) => DungeonApi(ref.watch(dioProvider));
