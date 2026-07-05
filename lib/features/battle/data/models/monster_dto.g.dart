// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monster_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MonsterListDto _$MonsterListDtoFromJson(Map<String, dynamic> json) =>
    _MonsterListDto(
      monsters:
          (json['monsters'] as List<dynamic>?)
              ?.map((e) => MonsterDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MonsterDto>[],
    );

Map<String, dynamic> _$MonsterListDtoToJson(_MonsterListDto instance) =>
    <String, dynamic>{
      'monsters': instance.monsters.map((e) => e.toJson()).toList(),
    };

_MonsterDto _$MonsterDtoFromJson(Map<String, dynamic> json) => _MonsterDto(
  id: json['id'] as String,
  nameKo: json['nameKo'] as String? ?? '몬스터',
  icon: json['icon'] as String? ?? '👾',
  rank: json['rank'] as String? ?? 'normal',
  level: (json['level'] as num?)?.toInt() ?? 1,
  element: json['element'] as String? ?? 'none',
  mapIds:
      (json['mapIds'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  hp: (json['hp'] as num?)?.toInt() ?? 30,
  attack: (json['attack'] as num?)?.toInt() ?? 5,
  defense: (json['defense'] as num?)?.toInt() ?? 0,
  speed: (json['speed'] as num?)?.toInt() ?? 5,
  exp: (json['exp'] as num?)?.toInt() ?? 0,
  gold: (json['gold'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$MonsterDtoToJson(_MonsterDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nameKo': instance.nameKo,
      'icon': instance.icon,
      'rank': instance.rank,
      'level': instance.level,
      'element': instance.element,
      'mapIds': instance.mapIds,
      'hp': instance.hp,
      'attack': instance.attack,
      'defense': instance.defense,
      'speed': instance.speed,
      'exp': instance.exp,
      'gold': instance.gold,
    };
