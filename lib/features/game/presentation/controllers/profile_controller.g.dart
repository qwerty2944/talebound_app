// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 캐릭터 프로필 상태. 전투 종료 후 refresh()로 갱신한다.

@ProviderFor(ProfileController)
final profileControllerProvider = ProfileControllerProvider._();

/// 캐릭터 프로필 상태. 전투 종료 후 refresh()로 갱신한다.
final class ProfileControllerProvider
    extends $AsyncNotifierProvider<ProfileController, Character?> {
  /// 캐릭터 프로필 상태. 전투 종료 후 refresh()로 갱신한다.
  ProfileControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'profileControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$profileControllerHash();

  @$internal
  @override
  ProfileController create() => ProfileController();
}

String _$profileControllerHash() => r'1715e99eb5681612d3fd5113981fb7c9777122a0';

/// 캐릭터 프로필 상태. 전투 종료 후 refresh()로 갱신한다.

abstract class _$ProfileController extends $AsyncNotifier<Character?> {
  FutureOr<Character?> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<Character?>, Character?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Character?>, Character?>,
              AsyncValue<Character?>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
