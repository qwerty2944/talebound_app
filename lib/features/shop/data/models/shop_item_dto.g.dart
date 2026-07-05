// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShopItemCatalogDto _$ShopItemCatalogDtoFromJson(Map<String, dynamic> json) =>
    _ShopItemCatalogDto(
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => ShopItemDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ShopItemDto>[],
    );

Map<String, dynamic> _$ShopItemCatalogDtoToJson(_ShopItemCatalogDto instance) =>
    <String, dynamic>{'items': instance.items.map((e) => e.toJson()).toList()};

_ShopItemDto _$ShopItemDtoFromJson(Map<String, dynamic> json) => _ShopItemDto(
  id: json['id'] as String,
  nameKo: json['nameKo'] as String? ?? '아이템',
  type: json['type'] as String? ?? 'misc',
  subtype: json['subtype'] as String? ?? '',
  rarity: json['rarity'] as String? ?? 'common',
  value: (json['value'] as num?)?.toInt() ?? 0,
  stackable: json['stackable'] as bool? ?? false,
  weaponType: json['weaponType'] as String?,
);

Map<String, dynamic> _$ShopItemDtoToJson(_ShopItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nameKo': instance.nameKo,
      'type': instance.type,
      'subtype': instance.subtype,
      'rarity': instance.rarity,
      'value': instance.value,
      'stackable': instance.stackable,
      'weaponType': instance.weaponType,
    };
