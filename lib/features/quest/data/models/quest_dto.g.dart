// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quest_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuestObjectiveDto _$QuestObjectiveDtoFromJson(Map<String, dynamic> json) =>
    _QuestObjectiveDto(
      type: json['type'] as String? ?? 'unknown',
      monsterId: json['monsterId'] as String?,
      itemId: json['itemId'] as String?,
      mapId: json['mapId'] as String?,
      count: (json['count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$QuestObjectiveDtoToJson(_QuestObjectiveDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'monsterId': instance.monsterId,
      'itemId': instance.itemId,
      'mapId': instance.mapId,
      'count': instance.count,
    };

_QuestRewardItemDto _$QuestRewardItemDtoFromJson(Map<String, dynamic> json) =>
    _QuestRewardItemDto(
      itemId: json['itemId'] as String,
      quantity: (json['quantity'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$QuestRewardItemDtoToJson(_QuestRewardItemDto instance) =>
    <String, dynamic>{'itemId': instance.itemId, 'quantity': instance.quantity};

_QuestRewardDto _$QuestRewardDtoFromJson(Map<String, dynamic> json) =>
    _QuestRewardDto(
      exp: (json['exp'] as num?)?.toInt() ?? 0,
      gold: (json['gold'] as num?)?.toInt() ?? 0,
      items:
          (json['items'] as List<dynamic>?)
              ?.map(
                (e) => QuestRewardItemDto.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <QuestRewardItemDto>[],
    );

Map<String, dynamic> _$QuestRewardDtoToJson(_QuestRewardDto instance) =>
    <String, dynamic>{
      'exp': instance.exp,
      'gold': instance.gold,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

_QuestProgressDto _$QuestProgressDtoFromJson(Map<String, dynamic> json) =>
    _QuestProgressDto(kill: (json['kill'] as num?)?.toInt() ?? 0);

Map<String, dynamic> _$QuestProgressDtoToJson(_QuestProgressDto instance) =>
    <String, dynamic>{'kill': instance.kill};

_QuestDto _$QuestDtoFromJson(Map<String, dynamic> json) => _QuestDto(
  id: json['id'] as String,
  nameKo: json['nameKo'] as String? ?? '퀘스트',
  descriptionKo: json['descriptionKo'] as String? ?? '',
  minLevel: (json['minLevel'] as num?)?.toInt() ?? 1,
  objective: json['objective'] == null
      ? const QuestObjectiveDto()
      : QuestObjectiveDto.fromJson(json['objective'] as Map<String, dynamic>),
  rewards: json['rewards'] == null
      ? const QuestRewardDto()
      : QuestRewardDto.fromJson(json['rewards'] as Map<String, dynamic>),
  status: json['status'] as String? ?? 'available',
  progress: json['progress'] == null
      ? const QuestProgressDto()
      : QuestProgressDto.fromJson(json['progress'] as Map<String, dynamic>),
);

Map<String, dynamic> _$QuestDtoToJson(_QuestDto instance) => <String, dynamic>{
  'id': instance.id,
  'nameKo': instance.nameKo,
  'descriptionKo': instance.descriptionKo,
  'minLevel': instance.minLevel,
  'objective': instance.objective.toJson(),
  'rewards': instance.rewards.toJson(),
  'status': instance.status,
  'progress': instance.progress.toJson(),
};

_QuestActionRequestDto _$QuestActionRequestDtoFromJson(
  Map<String, dynamic> json,
) => _QuestActionRequestDto(questId: json['questId'] as String);

Map<String, dynamic> _$QuestActionRequestDtoToJson(
  _QuestActionRequestDto instance,
) => <String, dynamic>{'questId': instance.questId};

_QuestLevelUpDto _$QuestLevelUpDtoFromJson(Map<String, dynamic> json) =>
    _QuestLevelUpDto(
      leveledUp: json['leveledUp'] as bool? ?? false,
      newLevel: (json['newLevel'] as num?)?.toInt() ?? 0,
      levelsGained: (json['levelsGained'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$QuestLevelUpDtoToJson(_QuestLevelUpDto instance) =>
    <String, dynamic>{
      'leveledUp': instance.leveledUp,
      'newLevel': instance.newLevel,
      'levelsGained': instance.levelsGained,
    };

_QuestClaimResponseDto _$QuestClaimResponseDtoFromJson(
  Map<String, dynamic> json,
) => _QuestClaimResponseDto(
  questId: json['questId'] as String,
  exp: (json['exp'] as num?)?.toInt() ?? 0,
  gold: (json['gold'] as num?)?.toInt() ?? 0,
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => QuestRewardItemDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <QuestRewardItemDto>[],
  levelUp: json['levelUp'] == null
      ? const QuestLevelUpDto()
      : QuestLevelUpDto.fromJson(json['levelUp'] as Map<String, dynamic>),
  totalGold: (json['totalGold'] as num?)?.toInt() ?? 0,
  totalExp: (json['totalExp'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$QuestClaimResponseDtoToJson(
  _QuestClaimResponseDto instance,
) => <String, dynamic>{
  'questId': instance.questId,
  'exp': instance.exp,
  'gold': instance.gold,
  'items': instance.items.map((e) => e.toJson()).toList(),
  'levelUp': instance.levelUp.toJson(),
  'totalGold': instance.totalGold,
  'totalExp': instance.totalExp,
};
