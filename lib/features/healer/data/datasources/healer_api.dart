import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/api_client.dart';
import '../models/heal_request_dto.dart';

part 'healer_api.g.dart';

@RestApi()
abstract class HealerApi {
  factory HealerApi(Dio dio, {String? baseUrl}) = _HealerApi;

  @POST('/npc/heal')
  Future<HealEnvelopeDto> heal(@Body() HealRequestDto body);
}

@Riverpod(keepAlive: true)
HealerApi healerApi(Ref ref) => HealerApi(ref.watch(dioProvider));
