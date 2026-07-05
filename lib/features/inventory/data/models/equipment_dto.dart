import 'package:freezed_annotation/freezed_annotation.dart';

part 'equipment_dto.freezed.dart';
part 'equipment_dto.g.dart';

/// characters.equipment (JSONB) — 12 슬롯. 웹 equipmentStore 와 동일 키.
/// `GET /api/profile` 로 읽고 `PATCH /api/profile { equipment }` 로 저장한다.
@freezed
abstract class EquipmentDto with _$EquipmentDto {
  const factory EquipmentDto({
    EquippedItemDto? mainHand,
    EquippedItemDto? offHand,
    EquippedItemDto? helmet,
    EquippedItemDto? armor,
    EquippedItemDto? cloth,
    EquippedItemDto? pants,
    EquippedItemDto? ring1,
    EquippedItemDto? ring2,
    EquippedItemDto? necklace,
    EquippedItemDto? earring1,
    EquippedItemDto? earring2,
    EquippedItemDto? bracelet,
  }) = _EquipmentDto;

  factory EquipmentDto.fromJson(Map<String, dynamic> json) =>
      _$EquipmentDtoFromJson(json);
}

/// 장착된 아이템. 스탯은 착용 시점에 items.json 에서 해석해 그대로 박아 넣는다(웹과 동일).
/// → 전투/장비 화면이 items.json 재조회 없이 동작.
@freezed
abstract class EquippedItemDto with _$EquippedItemDto {
  const factory EquippedItemDto({
    required String itemId,
    @Default('') String itemName,
    @Default('misc') String itemType,
    @Default('📦') String icon,
    String? rarity,
    String? handType, // one_handed | two_handed
    String? offHandType, // shield | torch | weapon
    double? attackSpeed,
    String? accessoryType, // ring | necklace | earring | bracelet
    @Default(<String, num>{}) Map<String, num> stats,
  }) = _EquippedItemDto;

  factory EquippedItemDto.fromJson(Map<String, dynamic> json) =>
      _$EquippedItemDtoFromJson(json);
}
