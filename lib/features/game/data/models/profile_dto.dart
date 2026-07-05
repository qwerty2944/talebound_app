import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/character.dart';

part 'profile_dto.freezed.dart';
part 'profile_dto.g.dart';

/// `GET /api/profile` 은 `{ data: <characters row> }` 형태로 응답한다.
@freezed
abstract class ProfileEnvelopeDto with _$ProfileEnvelopeDto {
  const factory ProfileEnvelopeDto({ProfileDto? data}) = _ProfileEnvelopeDto;

  factory ProfileEnvelopeDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileEnvelopeDtoFromJson(json);
}

/// characters row (snake_case). current_hp/current_mp 는 최대치일 때 null 이다.
@freezed
abstract class ProfileDto with _$ProfileDto {
  const ProfileDto._();

  const factory ProfileDto({
    @Default(1) int level,
    @Default(0) int experience,
    @Default(0) int gold,
    @Default(0) int gems,
    @JsonKey(name: 'current_hp') int? currentHp,
    @JsonKey(name: 'current_mp') int? currentMp,
    @Default(0) int fatigue,
    @JsonKey(name: 'max_fatigue') @Default(100) int maxFatigue,
    @JsonKey(name: 'current_map_id') String? currentMapId,
    CharacterInfoDto? character,
  }) = _ProfileDto;

  factory ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDtoFromJson(json);

  Character toEntity() {
    final stats = character?.stats ?? const StatsDto();
    // 최대 HP/MP: 백엔드 batch_recover_hp 공식과 동일.
    final maxHp = 50 + stats.con * 5 + level * 10;
    final maxMp = 20 + stats.wis * 3 + stats.intelligence;
    return Character(
      name: character?.name ?? '모험가',
      level: level,
      experience: experience,
      gold: gold,
      gems: gems,
      currentHp: currentHp ?? maxHp,
      maxHp: maxHp,
      currentMp: currentMp ?? maxMp,
      maxMp: maxMp,
      fatigue: fatigue,
      maxFatigue: maxFatigue,
      mapId: currentMapId ?? 'starting_village',
      stats: CharacterStats(
        str: stats.str,
        dex: stats.dex,
        con: stats.con,
        intelligence: stats.intelligence,
        wis: stats.wis,
        cha: stats.cha,
        lck: stats.lck,
      ),
    );
  }
}

@freezed
abstract class CharacterInfoDto with _$CharacterInfoDto {
  const factory CharacterInfoDto({
    @Default('모험가') String name,
    @Default(StatsDto()) StatsDto stats,
  }) = _CharacterInfoDto;

  factory CharacterInfoDto.fromJson(Map<String, dynamic> json) =>
      _$CharacterInfoDtoFromJson(json);
}

@freezed
abstract class StatsDto with _$StatsDto {
  const factory StatsDto({
    @Default(10) int str,
    @Default(10) int dex,
    @Default(10) int con,
    @JsonKey(name: 'int') @Default(10) int intelligence,
    @Default(10) int wis,
    @Default(10) int cha,
    @Default(10) int lck,
  }) = _StatsDto;

  factory StatsDto.fromJson(Map<String, dynamic> json) =>
      _$StatsDtoFromJson(json);
}
