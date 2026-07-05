import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/api_exception.dart';
import '../../domain/entities/character.dart';
import '../../domain/repositories/profile_repository.dart';
import '../datasources/profile_api.dart';

part 'profile_repository_impl.g.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  ProfileRepositoryImpl(this._api);

  final ProfileApi _api;

  @override
  Future<Character?> getProfile() async {
    try {
      final res = await _api.getProfile();
      return res.data?.toEntity();
    } on DioException catch (e) {
      // 캐릭터 미생성 → 404. 게임 홈에서 안내 상태로 처리.
      if (e.response?.statusCode == 404) return null;
      throw ApiException.fromDioException(e);
    }
  }
}

@Riverpod(keepAlive: true)
ProfileRepository profileRepository(Ref ref) =>
    ProfileRepositoryImpl(ref.watch(profileApiProvider));
