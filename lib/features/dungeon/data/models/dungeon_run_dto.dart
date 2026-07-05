import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/dungeon_run.dart';
import 'dungeon_dto.dart';

part 'dungeon_run_dto.freezed.dart';
part 'dungeon_run_dto.g.dart';

@freezed
abstract class DungeonStartRequestDto with _$DungeonStartRequestDto {
  const factory DungeonStartRequestDto({required String dungeonId}) =
      _DungeonStartRequestDto;

  factory DungeonStartRequestDto.fromJson(Map<String, dynamic> json) =>
      _$DungeonStartRequestDtoFromJson(json);
}

@freezed
abstract class DungeonMonsterDto with _$DungeonMonsterDto {
  const factory DungeonMonsterDto({
    required String id,
    @Default(1) int level,
  }) = _DungeonMonsterDto;

  factory DungeonMonsterDto.fromJson(Map<String, dynamic> json) =>
      _$DungeonMonsterDtoFromJson(json);
}

@freezed
abstract class DungeonStartResponseDto with _$DungeonStartResponseDto {
  const DungeonStartResponseDto._();

  const factory DungeonStartResponseDto({
    @Default(0) int wave,
    @Default(1) int totalWaves,
    required DungeonMonsterDto monster,
    required String battleToken,
    required String runToken,
  }) = _DungeonStartResponseDto;

  factory DungeonStartResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DungeonStartResponseDtoFromJson(json);

  DungeonRunState toEntity() => DungeonRunState(
        wave: wave,
        totalWaves: totalWaves,
        monsterId: monster.id,
        monsterLevel: monster.level,
        battleToken: battleToken,
        runToken: runToken,
      );
}

@freezed
abstract class DungeonAdvanceRequestDto with _$DungeonAdvanceRequestDto {
  const factory DungeonAdvanceRequestDto({
    required String runToken,
    required String battleToken,
    required int currentHp,
    required int currentMp,
  }) = _DungeonAdvanceRequestDto;

  factory DungeonAdvanceRequestDto.fromJson(Map<String, dynamic> json) =>
      _$DungeonAdvanceRequestDtoFromJson(json);
}

@freezed
abstract class WaveRewardDto with _$WaveRewardDto {
  const WaveRewardDto._();

  const factory WaveRewardDto({
    @Default(0) int exp,
    @Default(0) int gold,
    @Default(<DungeonRewardItemDto>[]) List<DungeonRewardItemDto> drops,
  }) = _WaveRewardDto;

  factory WaveRewardDto.fromJson(Map<String, dynamic> json) =>
      _$WaveRewardDtoFromJson(json);

  WaveReward toEntity() => WaveReward(
        exp: exp,
        gold: gold,
        drops: drops.map((d) => d.toEntity()).toList(),
      );
}

@freezed
abstract class DungeonClearRewardDto with _$DungeonClearRewardDto {
  const factory DungeonClearRewardDto({
    @Default(0) int exp,
    @Default(0) int gold,
    @Default(<DungeonRewardItemDto>[]) List<DungeonRewardItemDto> items,
  }) = _DungeonClearRewardDto;

  factory DungeonClearRewardDto.fromJson(Map<String, dynamic> json) =>
      _$DungeonClearRewardDtoFromJson(json);
}

@freezed
abstract class DungeonLevelUpDto with _$DungeonLevelUpDto {
  const factory DungeonLevelUpDto({
    @Default(false) bool leveledUp,
    @Default(0) int newLevel,
    @Default(0) int levelsGained,
  }) = _DungeonLevelUpDto;

  factory DungeonLevelUpDto.fromJson(Map<String, dynamic> json) =>
      _$DungeonLevelUpDtoFromJson(json);
}

@freezed
abstract class DungeonAdvanceResponseDto with _$DungeonAdvanceResponseDto {
  const DungeonAdvanceResponseDto._();

  const factory DungeonAdvanceResponseDto({
    @Default(false) bool cleared,
    @Default(0) int wave,
    @Default(1) int totalWaves,
    DungeonMonsterDto? monster,
    String? battleToken,
    String? runToken,
    @Default(WaveRewardDto()) WaveRewardDto waveReward,
    DungeonClearRewardDto? clearReward,
    @Default(DungeonLevelUpDto()) DungeonLevelUpDto levelUp,
  }) = _DungeonAdvanceResponseDto;

  factory DungeonAdvanceResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DungeonAdvanceResponseDtoFromJson(json);

  DungeonAdvanceResult toEntity() {
    if (cleared) {
      final clear = clearReward;
      return DungeonAdvanceResult(
        cleared: true,
        totalWaves: totalWaves,
        waveReward: waveReward.toEntity(),
        clearExp: clear?.exp ?? 0,
        clearGold: clear?.gold ?? 0,
        clearItems:
            clear?.items.map((i) => i.toEntity()).toList() ?? const [],
        leveledUp: levelUp.leveledUp,
        newLevel: levelUp.newLevel,
      );
    }
    final m = monster;
    return DungeonAdvanceResult(
      cleared: false,
      totalWaves: totalWaves,
      waveReward: waveReward.toEntity(),
      next: DungeonRunState(
        wave: wave,
        totalWaves: totalWaves,
        monsterId: m?.id ?? '',
        monsterLevel: m?.level ?? 1,
        battleToken: battleToken ?? '',
        runToken: runToken ?? '',
      ),
    );
  }
}
