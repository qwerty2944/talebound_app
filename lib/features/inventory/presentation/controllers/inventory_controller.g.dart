// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 개인 인벤토리 목록. 장착/해제 후 refresh 로 갱신한다.

@ProviderFor(InventoryController)
final inventoryControllerProvider = InventoryControllerProvider._();

/// 개인 인벤토리 목록. 장착/해제 후 refresh 로 갱신한다.
final class InventoryControllerProvider
    extends $AsyncNotifierProvider<InventoryController, List<InventoryEntry>> {
  /// 개인 인벤토리 목록. 장착/해제 후 refresh 로 갱신한다.
  InventoryControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'inventoryControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$inventoryControllerHash();

  @$internal
  @override
  InventoryController create() => InventoryController();
}

String _$inventoryControllerHash() =>
    r'11874638b8c9fdfcea92fe6cb357c6a127fbd2bb';

/// 개인 인벤토리 목록. 장착/해제 후 refresh 로 갱신한다.

abstract class _$InventoryController
    extends $AsyncNotifier<List<InventoryEntry>> {
  FutureOr<List<InventoryEntry>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<List<InventoryEntry>>, List<InventoryEntry>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<InventoryEntry>>,
                List<InventoryEntry>
              >,
              AsyncValue<List<InventoryEntry>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
