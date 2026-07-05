import '../../domain/entities/equipment.dart';
import '../../domain/entities/game_item.dart';
import '../models/equipment_dto.dart';
import '../models/game_item_dto.dart';

/// characters.equipment(JSONB) ↔ Equipment 엔티티 매핑.
class EquipmentMapper {
  const EquipmentMapper._();

  static EquippedItem _fromDto(EquippedItemDto dto) => EquippedItem(
        itemId: dto.itemId,
        itemName: dto.itemName,
        itemType: dto.itemType,
        icon: dto.icon,
        rarity: dto.rarity,
        handType: dto.handType,
        offHandType: dto.offHandType,
        attackSpeed: dto.attackSpeed,
        accessoryType: dto.accessoryType,
        stats: dto.stats,
      );

  static Map<String, dynamic> equippedToJson(EquippedItem item) => {
        'itemId': item.itemId,
        'itemName': item.itemName,
        'itemType': item.itemType,
        'icon': item.icon,
        if (item.rarity != null) 'rarity': item.rarity,
        if (item.handType != null) 'handType': item.handType,
        if (item.offHandType != null) 'offHandType': item.offHandType,
        if (item.attackSpeed != null) 'attackSpeed': item.attackSpeed,
        if (item.accessoryType != null) 'accessoryType': item.accessoryType,
        'stats': item.stats,
      };

  /// JSONB(Map) → Equipment. null/비객체는 빈 장비.
  static Equipment fromJson(Object? raw) {
    if (raw is! Map) return Equipment.empty;
    final slots = <EquipmentSlot, EquippedItem>{};
    raw.forEach((key, value) {
      final slot = equipmentSlotFromKey(key.toString());
      if (slot == null || value is! Map) return;
      final dto = EquippedItemDto.fromJson(Map<String, dynamic>.from(value));
      if (dto.itemId.isEmpty) return;
      slots[slot] = _fromDto(dto);
    });
    return Equipment(slots);
  }

  /// Equipment → PATCH /profile 용 JSONB(12슬롯 모두 키 유지, 빈 슬롯 null).
  static Map<String, dynamic> toJson(Equipment eq) {
    final out = <String, dynamic>{};
    for (final slot in EquipmentSlot.values) {
      final item = eq.item(slot);
      out[slot.name] = item == null ? null : equippedToJson(item);
    }
    return out;
  }
}

/// GameItemDto → GameItem.
extension GameItemDtoX on GameItemDto {
  GameItem toEntity() => GameItem(
        id: id,
        nameKo: nameKo,
        type: type,
        subtype: subtype,
        rarity: rarity,
        value: value,
        stackable: stackable,
        weaponType: weaponType,
        slot: slot,
        stats: stats,
        requirements: requirements,
        icon: icon,
      );
}
