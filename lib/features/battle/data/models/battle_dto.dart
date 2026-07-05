import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/battle_result.dart';

part 'battle_dto.freezed.dart';
part 'battle_dto.g.dart';

@freezed
abstract class StartBattleRequestDto with _$StartBattleRequestDto {
  const factory StartBattleRequestDto({required String monsterId}) =
      _StartBattleRequestDto;

  factory StartBattleRequestDto.fromJson(Map<String, dynamic> json) =>
      _$StartBattleRequestDtoFromJson(json);
}

@freezed
abstract class StartBattleResponseDto with _$StartBattleResponseDto {
  const StartBattleResponseDto._();

  const factory StartBattleResponseDto({
    required String battleToken,
    required BattleMonsterDto monster,
  }) = _StartBattleResponseDto;

  factory StartBattleResponseDto.fromJson(Map<String, dynamic> json) =>
      _$StartBattleResponseDtoFromJson(json);

  StartedBattle toEntity() =>
      StartedBattle(battleToken: battleToken, monsterLevel: monster.level);
}

@freezed
abstract class BattleMonsterDto with _$BattleMonsterDto {
  const factory BattleMonsterDto({required String id, @Default(1) int level}) =
      _BattleMonsterDto;

  factory BattleMonsterDto.fromJson(Map<String, dynamic> json) =>
      _$BattleMonsterDtoFromJson(json);
}

@freezed
abstract class CompleteBattleRequestDto with _$CompleteBattleRequestDto {
  const factory CompleteBattleRequestDto({
    required String battleToken,
    required String result,
    required int currentHp,
    required int currentMp,
  }) = _CompleteBattleRequestDto;

  factory CompleteBattleRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CompleteBattleRequestDtoFromJson(json);
}

@freezed
abstract class LevelUpDto with _$LevelUpDto {
  const factory LevelUpDto({
    @Default(false) bool leveledUp,
    @Default(0) int newLevel,
    @Default(0) int levelsGained,
  }) = _LevelUpDto;

  factory LevelUpDto.fromJson(Map<String, dynamic> json) =>
      _$LevelUpDtoFromJson(json);
}

@freezed
abstract class BattleDropDto with _$BattleDropDto {
  const factory BattleDropDto({
    required String itemId,
    @Default(1) int quantity,
  }) = _BattleDropDto;

  factory BattleDropDto.fromJson(Map<String, dynamic> json) =>
      _$BattleDropDtoFromJson(json);
}

@freezed
abstract class CompleteBattleResponseDto with _$CompleteBattleResponseDto {
  const CompleteBattleResponseDto._();

  const factory CompleteBattleResponseDto({
    @Default('victory') String result,
    @Default(0) int exp,
    @Default(0) int gold,
    @Default(<BattleDropDto>[]) List<BattleDropDto> drops,
    @Default(LevelUpDto()) LevelUpDto levelUp,
    @Default(0) int totalGold,
    @Default(0) int totalExp,
  }) = _CompleteBattleResponseDto;

  factory CompleteBattleResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CompleteBattleResponseDtoFromJson(json);

  BattleReward toEntity() => BattleReward(
        result: result,
        exp: exp,
        gold: gold,
        drops: drops
            .map((d) => BattleDrop(itemId: d.itemId, quantity: d.quantity))
            .toList(),
        leveledUp: levelUp.leveledUp,
        newLevel: levelUp.newLevel,
        totalGold: totalGold,
        totalExp: totalExp,
      );
}
