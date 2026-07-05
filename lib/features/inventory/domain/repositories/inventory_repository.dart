import '../entities/equipment.dart';
import '../entities/game_item.dart';

abstract class InventoryRepository {
  /// 인벤토리 조회(웹 inventory_get RPC). type: personal | storage.
  Future<List<InventoryEntry>> getInventory({String type = 'personal'});

  /// items.json 전체 메타 (id → GameItem).
  Future<Map<String, GameItem>> getItemMap();

  /// 장비 저장 (PATCH /profile { equipment }).
  Future<void> saveEquipment(Equipment equipment);
}
