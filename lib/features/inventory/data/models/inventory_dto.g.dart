// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InventoryEnvelopeDto _$InventoryEnvelopeDtoFromJson(
  Map<String, dynamic> json,
) => _InventoryEnvelopeDto(
  data: json['data'] == null
      ? null
      : InventoryResponseDto.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$InventoryEnvelopeDtoToJson(
  _InventoryEnvelopeDto instance,
) => <String, dynamic>{'data': instance.data?.toJson()};

_InventoryResponseDto _$InventoryResponseDtoFromJson(
  Map<String, dynamic> json,
) => _InventoryResponseDto(
  id: json['id'] as String?,
  inventoryType: json['inventoryType'] as String? ?? 'personal',
  maxSlots: (json['maxSlots'] as num?)?.toInt() ?? 20,
  items:
      (json['items'] as List<dynamic>?)
          ?.map(
            (e) => e == null
                ? null
                : InventorySlotItemDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <InventorySlotItemDto?>[],
);

Map<String, dynamic> _$InventoryResponseDtoToJson(
  _InventoryResponseDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'inventoryType': instance.inventoryType,
  'maxSlots': instance.maxSlots,
  'items': instance.items.map((e) => e?.toJson()).toList(),
};

_InventorySlotItemDto _$InventorySlotItemDtoFromJson(
  Map<String, dynamic> json,
) => _InventorySlotItemDto(
  slot: (json['slot'] as num?)?.toInt() ?? 0,
  itemId: json['itemId'] as String? ?? '',
  itemType: json['itemType'] as String? ?? 'misc',
  quantity: (json['quantity'] as num?)?.toInt() ?? 1,
  acquiredAt: json['acquiredAt'] as String?,
);

Map<String, dynamic> _$InventorySlotItemDtoToJson(
  _InventorySlotItemDto instance,
) => <String, dynamic>{
  'slot': instance.slot,
  'itemId': instance.itemId,
  'itemType': instance.itemType,
  'quantity': instance.quantity,
  'acquiredAt': instance.acquiredAt,
};
