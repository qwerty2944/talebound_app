// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battle_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StartBattleRequestDto _$StartBattleRequestDtoFromJson(
  Map<String, dynamic> json,
) => _StartBattleRequestDto(monsterId: json['monsterId'] as String);

Map<String, dynamic> _$StartBattleRequestDtoToJson(
  _StartBattleRequestDto instance,
) => <String, dynamic>{'monsterId': instance.monsterId};

_StartBattleResponseDto _$StartBattleResponseDtoFromJson(
  Map<String, dynamic> json,
) => _StartBattleResponseDto(
  battleToken: json['battleToken'] as String,
  monster: BattleMonsterDto.fromJson(json['monster'] as Map<String, dynamic>),
);

Map<String, dynamic> _$StartBattleResponseDtoToJson(
  _StartBattleResponseDto instance,
) => <String, dynamic>{
  'battleToken': instance.battleToken,
  'monster': instance.monster.toJson(),
};

_BattleMonsterDto _$BattleMonsterDtoFromJson(Map<String, dynamic> json) =>
    _BattleMonsterDto(
      id: json['id'] as String,
      level: (json['level'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$BattleMonsterDtoToJson(_BattleMonsterDto instance) =>
    <String, dynamic>{'id': instance.id, 'level': instance.level};

_CompleteBattleRequestDto _$CompleteBattleRequestDtoFromJson(
  Map<String, dynamic> json,
) => _CompleteBattleRequestDto(
  battleToken: json['battleToken'] as String,
  result: json['result'] as String,
  currentHp: (json['currentHp'] as num).toInt(),
  currentMp: (json['currentMp'] as num).toInt(),
);

Map<String, dynamic> _$CompleteBattleRequestDtoToJson(
  _CompleteBattleRequestDto instance,
) => <String, dynamic>{
  'battleToken': instance.battleToken,
  'result': instance.result,
  'currentHp': instance.currentHp,
  'currentMp': instance.currentMp,
};

_LevelUpDto _$LevelUpDtoFromJson(Map<String, dynamic> json) => _LevelUpDto(
  leveledUp: json['leveledUp'] as bool? ?? false,
  newLevel: (json['newLevel'] as num?)?.toInt() ?? 0,
  levelsGained: (json['levelsGained'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$LevelUpDtoToJson(_LevelUpDto instance) =>
    <String, dynamic>{
      'leveledUp': instance.leveledUp,
      'newLevel': instance.newLevel,
      'levelsGained': instance.levelsGained,
    };

_BattleDropDto _$BattleDropDtoFromJson(Map<String, dynamic> json) =>
    _BattleDropDto(
      itemId: json['itemId'] as String,
      quantity: (json['quantity'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$BattleDropDtoToJson(_BattleDropDto instance) =>
    <String, dynamic>{'itemId': instance.itemId, 'quantity': instance.quantity};

_CompleteBattleResponseDto _$CompleteBattleResponseDtoFromJson(
  Map<String, dynamic> json,
) => _CompleteBattleResponseDto(
  result: json['result'] as String? ?? 'victory',
  exp: (json['exp'] as num?)?.toInt() ?? 0,
  gold: (json['gold'] as num?)?.toInt() ?? 0,
  drops:
      (json['drops'] as List<dynamic>?)
          ?.map((e) => BattleDropDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <BattleDropDto>[],
  levelUp: json['levelUp'] == null
      ? const LevelUpDto()
      : LevelUpDto.fromJson(json['levelUp'] as Map<String, dynamic>),
  totalGold: (json['totalGold'] as num?)?.toInt() ?? 0,
  totalExp: (json['totalExp'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$CompleteBattleResponseDtoToJson(
  _CompleteBattleResponseDto instance,
) => <String, dynamic>{
  'result': instance.result,
  'exp': instance.exp,
  'gold': instance.gold,
  'drops': instance.drops.map((e) => e.toJson()).toList(),
  'levelUp': instance.levelUp.toJson(),
  'totalGold': instance.totalGold,
  'totalExp': instance.totalExp,
};
