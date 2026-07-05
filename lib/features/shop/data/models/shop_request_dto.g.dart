// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BuyRequestDto _$BuyRequestDtoFromJson(Map<String, dynamic> json) =>
    _BuyRequestDto(
      npcId: json['npcId'] as String,
      itemId: json['itemId'] as String,
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$BuyRequestDtoToJson(_BuyRequestDto instance) =>
    <String, dynamic>{
      'npcId': instance.npcId,
      'itemId': instance.itemId,
      'quantity': instance.quantity,
    };

_SellRequestDto _$SellRequestDtoFromJson(Map<String, dynamic> json) =>
    _SellRequestDto(
      itemId: json['itemId'] as String,
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$SellRequestDtoToJson(_SellRequestDto instance) =>
    <String, dynamic>{'itemId': instance.itemId, 'quantity': instance.quantity};

_BuyResponseDto _$BuyResponseDtoFromJson(Map<String, dynamic> json) =>
    _BuyResponseDto(
      gold: (json['gold'] as num?)?.toInt() ?? 0,
      itemId: json['itemId'] as String? ?? '',
      quantity: (json['quantity'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$BuyResponseDtoToJson(_BuyResponseDto instance) =>
    <String, dynamic>{
      'gold': instance.gold,
      'itemId': instance.itemId,
      'quantity': instance.quantity,
    };

_SellResponseDto _$SellResponseDtoFromJson(Map<String, dynamic> json) =>
    _SellResponseDto(gold: (json['gold'] as num?)?.toInt() ?? 0);

Map<String, dynamic> _$SellResponseDtoToJson(_SellResponseDto instance) =>
    <String, dynamic>{'gold': instance.gold};
