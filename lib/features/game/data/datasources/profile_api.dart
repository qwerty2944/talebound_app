import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/api_client.dart';
import '../models/profile_dto.dart';

part 'profile_api.g.dart';

@RestApi()
abstract class ProfileApi {
  factory ProfileApi(Dio dio, {String? baseUrl}) = _ProfileApi;

  @GET('/profile')
  Future<ProfileEnvelopeDto> getProfile();
}

@Riverpod(keepAlive: true)
ProfileApi profileApi(Ref ref) => ProfileApi(ref.watch(dioProvider));
