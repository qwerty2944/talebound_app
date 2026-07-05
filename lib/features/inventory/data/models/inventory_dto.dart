import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventory_dto.freezed.dart';
part 'inventory_dto.g.dart';

/// `POST /api/rpc/inventory_get` 응답 봉투. RpcController 가 `{ data: <scalar> }` 로 감싼다.
@freezed
abstract class InventoryEnvelopeDto with _$InventoryEnvelopeDto {
  const factory InventoryEnvelopeDto({InventoryResponseDto? data}) =
      _InventoryEnvelopeDto;

  factory InventoryEnvelopeDto.fromJson(Map<String, dynamic> json) =>
      _$InventoryEnvelopeDtoFromJson(json);
}

@freezed
abstract class InventoryResponseDto with _$InventoryResponseDto {
  const factory InventoryResponseDto({
    String? id,
    @Default('personal') String inventoryType,
    @Default(20) int maxSlots,
    @Default(<InventorySlotItemDto?>[]) List<InventorySlotItemDto?> items,
  }) = _InventoryResponseDto;

  factory InventoryResponseDto.fromJson(Map<String, dynamic> json) =>
      _$InventoryResponseDtoFromJson(json);
}

/// JSONB items[] 내 한 슬롯. 빈 슬롯은 null.
@freezed
abstract class InventorySlotItemDto with _$InventorySlotItemDto {
  const factory InventorySlotItemDto({
    @Default(0) int slot,
    @Default('') String itemId,
    @Default('misc') String itemType,
    @Default(1) int quantity,
    String? acquiredAt,
  }) = _InventorySlotItemDto;

  factory InventorySlotItemDto.fromJson(Map<String, dynamic> json) =>
      _$InventorySlotItemDtoFromJson(json);
}
