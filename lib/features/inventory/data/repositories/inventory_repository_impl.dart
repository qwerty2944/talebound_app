import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/api_exception.dart';
import '../../domain/entities/equipment.dart';
import '../../domain/entities/game_item.dart';
import '../../domain/repositories/inventory_repository.dart';
import '../datasources/inventory_api.dart';
import '../datasources/item_local_datasource.dart';
import '../mappers/equipment_mapper.dart';

part 'inventory_repository_impl.g.dart';

class InventoryRepositoryImpl implements InventoryRepository {
  InventoryRepositoryImpl(this._api, this._local);

  final InventoryApi _api;
  final ItemLocalDataSource _local;

  @override
  Future<Map<String, GameItem>> getItemMap() async {
    final dtoMap = await _local.loadItemMap();
    return {for (final e in dtoMap.entries) e.key: e.value.toEntity()};
  }

  @override
  Future<List<InventoryEntry>> getInventory({String type = 'personal'}) async {
    try {
      final itemMap = await getItemMap();
      final res = await _api.getInventory({'p_inventory_type': type});
      final data = res.data;
      if (data == null) return const [];
      final entries = <InventoryEntry>[];
      for (final slot in data.items) {
        if (slot == null || slot.itemId.isEmpty) continue;
        entries.add(
          InventoryEntry(
            slot: slot.slot,
            itemId: slot.itemId,
            quantity: slot.quantity,
            item: itemMap[slot.itemId],
          ),
        );
      }
      entries.sort((a, b) => a.slot.compareTo(b.slot));
      return entries;
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  @override
  Future<void> saveEquipment(Equipment equipment) async {
    try {
      await _api.patchProfile({'equipment': EquipmentMapper.toJson(equipment)});
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }
}

@Riverpod(keepAlive: true)
InventoryRepository inventoryRepository(Ref ref) => InventoryRepositoryImpl(
      ref.watch(inventoryApiProvider),
      ref.watch(itemLocalDataSourceProvider),
    );
