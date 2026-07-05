import '../entities/character.dart';

abstract interface class ProfileRepository {
  /// 본인 캐릭터 프로필. 캐릭터 미생성 시 null.
  Future<Character?> getProfile();
}
