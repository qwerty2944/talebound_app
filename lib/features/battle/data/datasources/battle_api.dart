import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/api_client.dart';
import '../models/battle_dto.dart';

part 'battle_api.g.dart';

@RestApi()
abstract class BattleApi {
  factory BattleApi(Dio dio, {String? baseUrl}) = _BattleApi;

  @POST('/battle/start')
  Future<StartBattleResponseDto> start(@Body() StartBattleRequestDto body);

  @POST('/battle/complete')
  Future<CompleteBattleResponseDto> complete(@Body() CompleteBattleRequestDto body);
}

@Riverpod(keepAlive: true)
BattleApi battleApi(Ref ref) => BattleApi(ref.watch(dioProvider));
