// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dungeon_run_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DungeonStartRequestDto _$DungeonStartRequestDtoFromJson(
  Map<String, dynamic> json,
) => _DungeonStartRequestDto(dungeonId: json['dungeonId'] as String);

Map<String, dynamic> _$DungeonStartRequestDtoToJson(
  _DungeonStartRequestDto instance,
) => <String, dynamic>{'dungeonId': instance.dungeonId};

_DungeonMonsterDto _$DungeonMonsterDtoFromJson(Map<String, dynamic> json) =>
    _DungeonMonsterDto(
      id: json['id'] as String,
      level: (json['level'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$DungeonMonsterDtoToJson(_DungeonMonsterDto instance) =>
    <String, dynamic>{'id': instance.id, 'level': instance.level};

_DungeonStartResponseDto _$DungeonStartResponseDtoFromJson(
  Map<String, dynamic> json,
) => _DungeonStartResponseDto(
  wave: (json['wave'] as num?)?.toInt() ?? 0,
  totalWaves: (json['totalWaves'] as num?)?.toInt() ?? 1,
  monster: DungeonMonsterDto.fromJson(json['monster'] as Map<String, dynamic>),
  battleToken: json['battleToken'] as String,
  runToken: json['runToken'] as String,
);

Map<String, dynamic> _$DungeonStartResponseDtoToJson(
  _DungeonStartResponseDto instance,
) => <String, dynamic>{
  'wave': instance.wave,
  'totalWaves': instance.totalWaves,
  'monster': instance.monster.toJson(),
  'battleToken': instance.battleToken,
  'runToken': instance.runToken,
};

_DungeonAdvanceRequestDto _$DungeonAdvanceRequestDtoFromJson(
  Map<String, dynamic> json,
) => _DungeonAdvanceRequestDto(
  runToken: json['runToken'] as String,
  battleToken: json['battleToken'] as String,
  currentHp: (json['currentHp'] as num).toInt(),
  currentMp: (json['currentMp'] as num).toInt(),
);

Map<String, dynamic> _$DungeonAdvanceRequestDtoToJson(
  _DungeonAdvanceRequestDto instance,
) => <String, dynamic>{
  'runToken': instance.runToken,
  'battleToken': instance.battleToken,
  'currentHp': instance.currentHp,
  'currentMp': instance.currentMp,
};

_WaveRewardDto _$WaveRewardDtoFromJson(Map<String, dynamic> json) =>
    _WaveRewardDto(
      exp: (json['exp'] as num?)?.toInt() ?? 0,
      gold: (json['gold'] as num?)?.toInt() ?? 0,
      drops:
          (json['drops'] as List<dynamic>?)
              ?.map(
                (e) => DungeonRewardItemDto.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <DungeonRewardItemDto>[],
    );

Map<String, dynamic> _$WaveRewardDtoToJson(_WaveRewardDto instance) =>
    <String, dynamic>{
      'exp': instance.exp,
      'gold': instance.gold,
      'drops': instance.drops.map((e) => e.toJson()).toList(),
    };

_DungeonClearRewardDto _$DungeonClearRewardDtoFromJson(
  Map<String, dynamic> json,
) => _DungeonClearRewardDto(
  exp: (json['exp'] as num?)?.toInt() ?? 0,
  gold: (json['gold'] as num?)?.toInt() ?? 0,
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => DungeonRewardItemDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <DungeonRewardItemDto>[],
);

Map<String, dynamic> _$DungeonClearRewardDtoToJson(
  _DungeonClearRewardDto instance,
) => <String, dynamic>{
  'exp': instance.exp,
  'gold': instance.gold,
  'items': instance.items.map((e) => e.toJson()).toList(),
};

_DungeonLevelUpDto _$DungeonLevelUpDtoFromJson(Map<String, dynamic> json) =>
    _DungeonLevelUpDto(
      leveledUp: json['leveledUp'] as bool? ?? false,
      newLevel: (json['newLevel'] as num?)?.toInt() ?? 0,
      levelsGained: (json['levelsGained'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$DungeonLevelUpDtoToJson(_DungeonLevelUpDto instance) =>
    <String, dynamic>{
      'leveledUp': instance.leveledUp,
      'newLevel': instance.newLevel,
      'levelsGained': instance.levelsGained,
    };

_DungeonAdvanceResponseDto _$DungeonAdvanceResponseDtoFromJson(
  Map<String, dynamic> json,
) => _DungeonAdvanceResponseDto(
  cleared: json['cleared'] as bool? ?? false,
  wave: (json['wave'] as num?)?.toInt() ?? 0,
  totalWaves: (json['totalWaves'] as num?)?.toInt() ?? 1,
  monster: json['monster'] == null
      ? null
      : DungeonMonsterDto.fromJson(json['monster'] as Map<String, dynamic>),
  battleToken: json['battleToken'] as String?,
  runToken: json['runToken'] as String?,
  waveReward: json['waveReward'] == null
      ? const WaveRewardDto()
      : WaveRewardDto.fromJson(json['waveReward'] as Map<String, dynamic>),
  clearReward: json['clearReward'] == null
      ? null
      : DungeonClearRewardDto.fromJson(
          json['clearReward'] as Map<String, dynamic>,
        ),
  levelUp: json['levelUp'] == null
      ? const DungeonLevelUpDto()
      : DungeonLevelUpDto.fromJson(json['levelUp'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DungeonAdvanceResponseDtoToJson(
  _DungeonAdvanceResponseDto instance,
) => <String, dynamic>{
  'cleared': instance.cleared,
  'wave': instance.wave,
  'totalWaves': instance.totalWaves,
  'monster': instance.monster?.toJson(),
  'battleToken': instance.battleToken,
  'runToken': instance.runToken,
  'waveReward': instance.waveReward.toJson(),
  'clearReward': instance.clearReward?.toJson(),
  'levelUp': instance.levelUp.toJson(),
};
