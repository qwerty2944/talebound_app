// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileEnvelopeDto _$ProfileEnvelopeDtoFromJson(Map<String, dynamic> json) =>
    _ProfileEnvelopeDto(
      data: json['data'] == null
          ? null
          : ProfileDto.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileEnvelopeDtoToJson(_ProfileEnvelopeDto instance) =>
    <String, dynamic>{'data': instance.data?.toJson()};

_ProfileDto _$ProfileDtoFromJson(Map<String, dynamic> json) => _ProfileDto(
  level: (json['level'] as num?)?.toInt() ?? 1,
  experience: (json['experience'] as num?)?.toInt() ?? 0,
  gold: (json['gold'] as num?)?.toInt() ?? 0,
  gems: (json['gems'] as num?)?.toInt() ?? 0,
  currentHp: (json['current_hp'] as num?)?.toInt(),
  currentMp: (json['current_mp'] as num?)?.toInt(),
  fatigue: (json['fatigue'] as num?)?.toInt() ?? 0,
  maxFatigue: (json['max_fatigue'] as num?)?.toInt() ?? 100,
  currentMapId: json['current_map_id'] as String?,
  equipment: json['equipment'] as Map<String, dynamic>?,
  character: json['character'] == null
      ? null
      : CharacterInfoDto.fromJson(json['character'] as Map<String, dynamic>),
  injuries:
      (json['injuries'] as List<dynamic>?)
          ?.map((e) => InjuryDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <InjuryDto>[],
);

Map<String, dynamic> _$ProfileDtoToJson(_ProfileDto instance) =>
    <String, dynamic>{
      'level': instance.level,
      'experience': instance.experience,
      'gold': instance.gold,
      'gems': instance.gems,
      'current_hp': instance.currentHp,
      'current_mp': instance.currentMp,
      'fatigue': instance.fatigue,
      'max_fatigue': instance.maxFatigue,
      'current_map_id': instance.currentMapId,
      'equipment': instance.equipment,
      'character': instance.character?.toJson(),
      'injuries': instance.injuries.map((e) => e.toJson()).toList(),
    };

_InjuryDto _$InjuryDtoFromJson(Map<String, dynamic> json) => _InjuryDto(
  type: json['type'] as String? ?? 'light',
  source: json['source'] as String?,
  occurredAt: json['occurredAt'] as String?,
  naturalHealAt: json['naturalHealAt'] as String?,
);

Map<String, dynamic> _$InjuryDtoToJson(_InjuryDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'source': instance.source,
      'occurredAt': instance.occurredAt,
      'naturalHealAt': instance.naturalHealAt,
    };

_CharacterInfoDto _$CharacterInfoDtoFromJson(Map<String, dynamic> json) =>
    _CharacterInfoDto(
      name: json['name'] as String? ?? '모험가',
      stats: json['stats'] == null
          ? const StatsDto()
          : StatsDto.fromJson(json['stats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CharacterInfoDtoToJson(_CharacterInfoDto instance) =>
    <String, dynamic>{'name': instance.name, 'stats': instance.stats.toJson()};

_StatsDto _$StatsDtoFromJson(Map<String, dynamic> json) => _StatsDto(
  str: (json['str'] as num?)?.toInt() ?? 10,
  dex: (json['dex'] as num?)?.toInt() ?? 10,
  con: (json['con'] as num?)?.toInt() ?? 10,
  intelligence: (json['int'] as num?)?.toInt() ?? 10,
  wis: (json['wis'] as num?)?.toInt() ?? 10,
  cha: (json['cha'] as num?)?.toInt() ?? 10,
  lck: (json['lck'] as num?)?.toInt() ?? 10,
);

Map<String, dynamic> _$StatsDtoToJson(_StatsDto instance) => <String, dynamic>{
  'str': instance.str,
  'dex': instance.dex,
  'con': instance.con,
  'int': instance.intelligence,
  'wis': instance.wis,
  'cha': instance.cha,
  'lck': instance.lck,
};
