import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/inventory_repository_impl.dart';
import '../../domain/entities/game_item.dart';

part 'inventory_controller.g.dart';

/// 개인 인벤토리 목록. 장착/해제 후 refresh 로 갱신한다.
@riverpod
class InventoryController extends _$InventoryController {
  @override
  Future<List<InventoryEntry>> build() =>
      ref.watch(inventoryRepositoryProvider).getInventory();

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(inventoryRepositoryProvider).getInventory(),
    );
  }
}
