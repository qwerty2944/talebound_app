import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/quest.dart';

part 'quest_dto.freezed.dart';
part 'quest_dto.g.dart';

@freezed
abstract class QuestObjectiveDto with _$QuestObjectiveDto {
  const QuestObjectiveDto._();

  const factory QuestObjectiveDto({
    @Default('unknown') String type,
    String? monsterId,
    String? itemId,
    String? mapId,
    int? count,
  }) = _QuestObjectiveDto;

  factory QuestObjectiveDto.fromJson(Map<String, dynamic> json) =>
      _$QuestObjectiveDtoFromJson(json);

  QuestObjective toEntity() => QuestObjective(
        type: questObjectiveTypeFromString(type),
        monsterId: monsterId,
        itemId: itemId,
        mapId: mapId,
        count: count,
      );
}

@freezed
abstract class QuestRewardItemDto with _$QuestRewardItemDto {
  const QuestRewardItemDto._();

  const factory QuestRewardItemDto({
    required String itemId,
    @Default(1) int quantity,
  }) = _QuestRewardItemDto;

  factory QuestRewardItemDto.fromJson(Map<String, dynamic> json) =>
      _$QuestRewardItemDtoFromJson(json);

  QuestRewardItem toEntity() =>
      QuestRewardItem(itemId: itemId, quantity: quantity);
}

@freezed
abstract class QuestRewardDto with _$QuestRewardDto {
  const QuestRewardDto._();

  const factory QuestRewardDto({
    @Default(0) int exp,
    @Default(0) int gold,
    @Default(<QuestRewardItemDto>[]) List<QuestRewardItemDto> items,
  }) = _QuestRewardDto;

  factory QuestRewardDto.fromJson(Map<String, dynamic> json) =>
      _$QuestRewardDtoFromJson(json);

  QuestReward toEntity() => QuestReward(
        exp: exp,
        gold: gold,
        items: items.map((i) => i.toEntity()).toList(),
      );
}

@freezed
abstract class QuestProgressDto with _$QuestProgressDto {
  const factory QuestProgressDto({@Default(0) int kill}) = _QuestProgressDto;

  factory QuestProgressDto.fromJson(Map<String, dynamic> json) =>
      _$QuestProgressDtoFromJson(json);
}

@freezed
abstract class QuestDto with _$QuestDto {
  const QuestDto._();

  const factory QuestDto({
    required String id,
    @Default('') String npcId,
    @Default('퀘스트') String nameKo,
    @Default('') String descriptionKo,
    @Default(1) int minLevel,
    @Default(QuestObjectiveDto()) QuestObjectiveDto objective,
    @Default(QuestRewardDto()) QuestRewardDto rewards,
    @Default('available') String status,
    @Default(QuestProgressDto()) QuestProgressDto progress,
  }) = _QuestDto;

  factory QuestDto.fromJson(Map<String, dynamic> json) =>
      _$QuestDtoFromJson(json);

  Quest toEntity() => Quest(
        id: id,
        npcId: npcId,
        nameKo: nameKo,
        descriptionKo: descriptionKo,
        minLevel: minLevel,
        objective: objective.toEntity(),
        reward: rewards.toEntity(),
        status: questStatusFromString(status),
        killProgress: progress.kill,
      );
}

@freezed
abstract class QuestActionRequestDto with _$QuestActionRequestDto {
  const factory QuestActionRequestDto({required String questId}) =
      _QuestActionRequestDto;

  factory QuestActionRequestDto.fromJson(Map<String, dynamic> json) =>
      _$QuestActionRequestDtoFromJson(json);
}

@freezed
abstract class QuestLevelUpDto with _$QuestLevelUpDto {
  const factory QuestLevelUpDto({
    @Default(false) bool leveledUp,
    @Default(0) int newLevel,
    @Default(0) int levelsGained,
  }) = _QuestLevelUpDto;

  factory QuestLevelUpDto.fromJson(Map<String, dynamic> json) =>
      _$QuestLevelUpDtoFromJson(json);
}

@freezed
abstract class QuestClaimResponseDto with _$QuestClaimResponseDto {
  const QuestClaimResponseDto._();

  const factory QuestClaimResponseDto({
    required String questId,
    @Default(0) int exp,
    @Default(0) int gold,
    @Default(<QuestRewardItemDto>[]) List<QuestRewardItemDto> items,
    @Default(QuestLevelUpDto()) QuestLevelUpDto levelUp,
    @Default(0) int totalGold,
    @Default(0) int totalExp,
  }) = _QuestClaimResponseDto;

  factory QuestClaimResponseDto.fromJson(Map<String, dynamic> json) =>
      _$QuestClaimResponseDtoFromJson(json);

  QuestClaimResult toEntity() => QuestClaimResult(
        questId: questId,
        exp: exp,
        gold: gold,
        items: items.map((i) => i.toEntity()).toList(),
        leveledUp: levelUp.leveledUp,
        newLevel: levelUp.newLevel,
        totalGold: totalGold,
        totalExp: totalExp,
      );
}
