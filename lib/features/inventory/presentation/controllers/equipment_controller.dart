import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../game/presentation/controllers/profile_controller.dart';
import '../../data/repositories/inventory_repository_impl.dart';
import '../../domain/entities/equipment.dart';
import '../../domain/entities/game_item.dart';
import '../../domain/logic/equip_logic.dart';
import 'inventory_controller.dart';

part 'equipment_controller.g.dart';

/// 장착/해제 액션. 상태(현재 장비)는 profileController(Character.equipment)가 권위.
/// 변경 시 PATCH /profile 후 프로필/인벤토리를 갱신한다.
@riverpod
class EquipmentController extends _$EquipmentController {
  @override
  FutureOr<void> build() {}

  Future<Equipment> _current() async {
    final char = await ref.read(profileControllerProvider.future);
    return char?.equipment ?? Equipment.empty;
  }

  /// 아이템 장착. 슬롯 자동 판정 + 양손무기/보조 충돌 처리.
  /// 반환: 장착된 슬롯의 한글명(토스트용).
  Future<String> equip(GameItem item) async {
    if (!item.isEquipment) {
      throw StateError('장착할 수 없는 아이템입니다.');
    }
    final current = await _current();
    final occupied = {
      for (final s in EquipmentSlot.values) s: current.item(s) != null,
    };
    final slot = EquipLogic.resolveSlot(item, occupied: occupied);
    if (slot == null) {
      throw StateError('장착 가능한 슬롯이 없습니다.');
    }

    final equipped = EquipLogic.toEquippedItem(item);
    final slots = {...current.slots};
    slots[slot] = equipped;

    // 양손 무기를 주무기에 착용 → 보조 해제.
    if (slot == EquipmentSlot.mainHand && equipped.isTwoHanded) {
      slots.remove(EquipmentSlot.offHand);
    }
    // 보조를 착용하는데 주무기가 양손 → 주무기 해제.
    if (slot == EquipmentSlot.offHand &&
        (current.item(EquipmentSlot.mainHand)?.isTwoHanded ?? false)) {
      slots.remove(EquipmentSlot.mainHand);
    }

    await _persist(Equipment(slots));
    return kSlotConfig[slot]!.nameKo;
  }

  /// 슬롯 해제.
  Future<void> unequip(EquipmentSlot slot) async {
    final current = await _current();
    if (current.item(slot) == null) return;
    final slots = {...current.slots}..remove(slot);
    await _persist(Equipment(slots));
  }

  Future<void> _persist(Equipment next) async {
    await ref.read(inventoryRepositoryProvider).saveEquipment(next);
    await ref.read(profileControllerProvider.notifier).refresh();
    ref.invalidate(inventoryControllerProvider);
  }
}
