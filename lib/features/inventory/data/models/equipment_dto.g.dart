// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EquipmentDto _$EquipmentDtoFromJson(Map<String, dynamic> json) =>
    _EquipmentDto(
      mainHand: json['mainHand'] == null
          ? null
          : EquippedItemDto.fromJson(json['mainHand'] as Map<String, dynamic>),
      offHand: json['offHand'] == null
          ? null
          : EquippedItemDto.fromJson(json['offHand'] as Map<String, dynamic>),
      helmet: json['helmet'] == null
          ? null
          : EquippedItemDto.fromJson(json['helmet'] as Map<String, dynamic>),
      armor: json['armor'] == null
          ? null
          : EquippedItemDto.fromJson(json['armor'] as Map<String, dynamic>),
      cloth: json['cloth'] == null
          ? null
          : EquippedItemDto.fromJson(json['cloth'] as Map<String, dynamic>),
      pants: json['pants'] == null
          ? null
          : EquippedItemDto.fromJson(json['pants'] as Map<String, dynamic>),
      ring1: json['ring1'] == null
          ? null
          : EquippedItemDto.fromJson(json['ring1'] as Map<String, dynamic>),
      ring2: json['ring2'] == null
          ? null
          : EquippedItemDto.fromJson(json['ring2'] as Map<String, dynamic>),
      necklace: json['necklace'] == null
          ? null
          : EquippedItemDto.fromJson(json['necklace'] as Map<String, dynamic>),
      earring1: json['earring1'] == null
          ? null
          : EquippedItemDto.fromJson(json['earring1'] as Map<String, dynamic>),
      earring2: json['earring2'] == null
          ? null
          : EquippedItemDto.fromJson(json['earring2'] as Map<String, dynamic>),
      bracelet: json['bracelet'] == null
          ? null
          : EquippedItemDto.fromJson(json['bracelet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EquipmentDtoToJson(_EquipmentDto instance) =>
    <String, dynamic>{
      'mainHand': instance.mainHand?.toJson(),
      'offHand': instance.offHand?.toJson(),
      'helmet': instance.helmet?.toJson(),
      'armor': instance.armor?.toJson(),
      'cloth': instance.cloth?.toJson(),
      'pants': instance.pants?.toJson(),
      'ring1': instance.ring1?.toJson(),
      'ring2': instance.ring2?.toJson(),
      'necklace': instance.necklace?.toJson(),
      'earring1': instance.earring1?.toJson(),
      'earring2': instance.earring2?.toJson(),
      'bracelet': instance.bracelet?.toJson(),
    };

_EquippedItemDto _$EquippedItemDtoFromJson(Map<String, dynamic> json) =>
    _EquippedItemDto(
      itemId: json['itemId'] as String,
      itemName: json['itemName'] as String? ?? '',
      itemType: json['itemType'] as String? ?? 'misc',
      icon: json['icon'] as String? ?? '📦',
      rarity: json['rarity'] as String?,
      handType: json['handType'] as String?,
      offHandType: json['offHandType'] as String?,
      attackSpeed: (json['attackSpeed'] as num?)?.toDouble(),
      accessoryType: json['accessoryType'] as String?,
      stats:
          (json['stats'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as num),
          ) ??
          const <String, num>{},
    );

Map<String, dynamic> _$EquippedItemDtoToJson(_EquippedItemDto instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'itemName': instance.itemName,
      'itemType': instance.itemType,
      'icon': instance.icon,
      'rarity': instance.rarity,
      'handType': instance.handType,
      'offHandType': instance.offHandType,
      'attackSpeed': instance.attackSpeed,
      'accessoryType': instance.accessoryType,
      'stats': instance.stats,
    };
