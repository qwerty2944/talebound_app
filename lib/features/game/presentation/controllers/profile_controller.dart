import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/character.dart';
import '../../domain/usecases/get_profile.dart';

part 'profile_controller.g.dart';

/// 캐릭터 프로필 상태. 전투 종료 후 refresh()로 갱신한다.
@riverpod
class ProfileController extends _$ProfileController {
  @override
  Future<Character?> build() => ref.watch(getProfileProvider).call();

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => ref.read(getProfileProvider).call());
  }
}
