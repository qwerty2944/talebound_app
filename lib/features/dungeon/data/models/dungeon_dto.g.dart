// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dungeon_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DungeonListDto _$DungeonListDtoFromJson(Map<String, dynamic> json) =>
    _DungeonListDto(
      dungeons:
          (json['dungeons'] as List<dynamic>?)
              ?.map((e) => DungeonDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <DungeonDto>[],
    );

Map<String, dynamic> _$DungeonListDtoToJson(_DungeonListDto instance) =>
    <String, dynamic>{
      'dungeons': instance.dungeons.map((e) => e.toJson()).toList(),
    };

_DungeonClearRewardsDto _$DungeonClearRewardsDtoFromJson(
  Map<String, dynamic> json,
) => _DungeonClearRewardsDto(
  exp: (json['exp'] as num?)?.toInt() ?? 0,
  gold: (json['gold'] as num?)?.toInt() ?? 0,
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => DungeonRewardItemDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <DungeonRewardItemDto>[],
);

Map<String, dynamic> _$DungeonClearRewardsDtoToJson(
  _DungeonClearRewardsDto instance,
) => <String, dynamic>{
  'exp': instance.exp,
  'gold': instance.gold,
  'items': instance.items.map((e) => e.toJson()).toList(),
};

_DungeonRewardItemDto _$DungeonRewardItemDtoFromJson(
  Map<String, dynamic> json,
) => _DungeonRewardItemDto(
  itemId: json['itemId'] as String,
  quantity: (json['quantity'] as num?)?.toInt() ?? 1,
);

Map<String, dynamic> _$DungeonRewardItemDtoToJson(
  _DungeonRewardItemDto instance,
) => <String, dynamic>{
  'itemId': instance.itemId,
  'quantity': instance.quantity,
};

_DungeonDto _$DungeonDtoFromJson(Map<String, dynamic> json) => _DungeonDto(
  id: json['id'] as String,
  nameKo: json['nameKo'] as String? ?? '던전',
  descriptionKo: json['descriptionKo'] as String? ?? '',
  icon: json['icon'] as String? ?? '🏛️',
  entryMapId: json['entryMapId'] as String? ?? '',
  minLevel: (json['minLevel'] as num?)?.toInt() ?? 1,
  fatigueCost: (json['fatigueCost'] as num?)?.toInt() ?? 0,
  waves:
      (json['waves'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  clearRewards: json['clearRewards'] == null
      ? const DungeonClearRewardsDto()
      : DungeonClearRewardsDto.fromJson(
          json['clearRewards'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$DungeonDtoToJson(_DungeonDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nameKo': instance.nameKo,
      'descriptionKo': instance.descriptionKo,
      'icon': instance.icon,
      'entryMapId': instance.entryMapId,
      'minLevel': instance.minLevel,
      'fatigueCost': instance.fatigueCost,
      'waves': instance.waves,
      'clearRewards': instance.clearRewards.toJson(),
    };
