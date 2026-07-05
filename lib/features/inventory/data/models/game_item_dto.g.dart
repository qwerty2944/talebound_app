// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameItemDto _$GameItemDtoFromJson(Map<String, dynamic> json) => _GameItemDto(
  id: json['id'] as String,
  nameKo: json['nameKo'] as String? ?? '',
  nameEn: json['nameEn'] as String? ?? '',
  type: json['type'] as String? ?? 'misc',
  subtype: json['subtype'] as String?,
  rarity: json['rarity'] as String? ?? 'common',
  value: (json['value'] as num?)?.toInt() ?? 0,
  stackable: json['stackable'] as bool? ?? false,
  weaponType: json['weaponType'] as String?,
  slot: json['slot'] as String?,
  stats:
      (json['stats'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as num),
      ) ??
      const <String, num>{},
  requirements:
      (json['requirements'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as num),
      ) ??
      const <String, num>{},
  icon: json['icon'] as String?,
);

Map<String, dynamic> _$GameItemDtoToJson(_GameItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nameKo': instance.nameKo,
      'nameEn': instance.nameEn,
      'type': instance.type,
      'subtype': instance.subtype,
      'rarity': instance.rarity,
      'value': instance.value,
      'stackable': instance.stackable,
      'weaponType': instance.weaponType,
      'slot': instance.slot,
      'stats': instance.stats,
      'requirements': instance.requirements,
      'icon': instance.icon,
    };

_GameItemFileDto _$GameItemFileDtoFromJson(Map<String, dynamic> json) =>
    _GameItemFileDto(
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => GameItemDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <GameItemDto>[],
    );

Map<String, dynamic> _$GameItemFileDtoToJson(_GameItemFileDto instance) =>
    <String, dynamic>{'items': instance.items.map((e) => e.toJson()).toList()};
