import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/train_result.dart';

part 'train_dto.freezed.dart';
part 'train_dto.g.dart';

/// `GET /api/proficiencies` → `{ data: { <type>: number, ... } }`.
@freezed
abstract class ProficiencyEnvelopeDto with _$ProficiencyEnvelopeDto {
  const factory ProficiencyEnvelopeDto({
    @Default(<String, num>{}) Map<String, num> data,
  }) = _ProficiencyEnvelopeDto;

  factory ProficiencyEnvelopeDto.fromJson(Map<String, dynamic> json) =>
      _$ProficiencyEnvelopeDtoFromJson(json);
}

@freezed
abstract class TrainRequestDto with _$TrainRequestDto {
  const factory TrainRequestDto({required String proficiencyType}) =
      _TrainRequestDto;

  factory TrainRequestDto.fromJson(Map<String, dynamic> json) =>
      _$TrainRequestDtoFromJson(json);
}

@freezed
abstract class TrainResponseDto with _$TrainResponseDto {
  const TrainResponseDto._();

  const factory TrainResponseDto({
    @Default(0) int gold,
    @Default('') String type,
    @Default(0) int value,
    @Default(0) int cost,
    @Default(0) int nextCost,
  }) = _TrainResponseDto;

  factory TrainResponseDto.fromJson(Map<String, dynamic> json) =>
      _$TrainResponseDtoFromJson(json);

  TrainResult toEntity() => TrainResult(
        gold: gold,
        type: type,
        value: value,
        cost: cost,
        nextCost: nextCost,
      );
}
