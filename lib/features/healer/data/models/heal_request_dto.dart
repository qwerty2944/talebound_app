import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/heal_outcome.dart';

part 'heal_request_dto.freezed.dart';
part 'heal_request_dto.g.dart';

/// `POST /api/npc/heal` 요청 바디 — 웹 HealerDialog 와 동일 계약.
@freezed
abstract class HealRequestDto with _$HealRequestDto {
  const factory HealRequestDto({
    required String npcId,
    required int injuryIndex,
  }) = _HealRequestDto;

  factory HealRequestDto.fromJson(Map<String, dynamic> json) =>
      _$HealRequestDtoFromJson(json);
}

/// 응답은 `{ data: <heal_injury_with_gold 결과> }` 봉투로 온다.
@freezed
abstract class HealEnvelopeDto with _$HealEnvelopeDto {
  const factory HealEnvelopeDto({HealResultDto? data}) = _HealEnvelopeDto;

  factory HealEnvelopeDto.fromJson(Map<String, dynamic> json) =>
      _$HealEnvelopeDtoFromJson(json);
}

@freezed
abstract class HealResultDto with _$HealResultDto {
  const HealResultDto._();

  const factory HealResultDto({
    @Default(false) bool success,
    @JsonKey(name: 'remaining_gold') @Default(0) int remainingGold,
    String? message,
  }) = _HealResultDto;

  factory HealResultDto.fromJson(Map<String, dynamic> json) =>
      _$HealResultDtoFromJson(json);

  HealOutcome toEntity() => HealOutcome(
        success: success,
        remainingGold: remainingGold,
        message: message,
      );
}
