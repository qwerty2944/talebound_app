// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 장착/해제 액션. 상태(현재 장비)는 profileController(Character.equipment)가 권위.
/// 변경 시 PATCH /profile 후 프로필/인벤토리를 갱신한다.

@ProviderFor(EquipmentController)
final equipmentControllerProvider = EquipmentControllerProvider._();

/// 장착/해제 액션. 상태(현재 장비)는 profileController(Character.equipment)가 권위.
/// 변경 시 PATCH /profile 후 프로필/인벤토리를 갱신한다.
final class EquipmentControllerProvider
    extends $AsyncNotifierProvider<EquipmentController, void> {
  /// 장착/해제 액션. 상태(현재 장비)는 profileController(Character.equipment)가 권위.
  /// 변경 시 PATCH /profile 후 프로필/인벤토리를 갱신한다.
  EquipmentControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'equipmentControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$equipmentControllerHash();

  @$internal
  @override
  EquipmentController create() => EquipmentController();
}

String _$equipmentControllerHash() =>
    r'8bf05532aa02e90dce4e50f424687c91d40f8240';

/// 장착/해제 액션. 상태(현재 장비)는 profileController(Character.equipment)가 권위.
/// 변경 시 PATCH /profile 후 프로필/인벤토리를 갱신한다.

abstract class _$EquipmentController extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
