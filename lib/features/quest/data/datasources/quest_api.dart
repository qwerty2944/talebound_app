import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/api_client.dart';
import '../models/quest_dto.dart';

part 'quest_api.g.dart';

@RestApi()
abstract class QuestApi {
  factory QuestApi(Dio dio, {String? baseUrl}) = _QuestApi;

  @GET('/quest')
  Future<List<QuestDto>> list();

  @POST('/quest/accept')
  Future<void> accept(@Body() QuestActionRequestDto body);

  @POST('/quest/claim')
  Future<QuestClaimResponseDto> claim(@Body() QuestActionRequestDto body);
}

@Riverpod(keepAlive: true)
QuestApi questApi(Ref ref) => QuestApi(ref.watch(dioProvider));
