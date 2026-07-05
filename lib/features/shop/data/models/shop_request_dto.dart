import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/shop_transaction.dart';

part 'shop_request_dto.freezed.dart';
part 'shop_request_dto.g.dart';

@freezed
abstract class BuyRequestDto with _$BuyRequestDto {
  const factory BuyRequestDto({
    required String npcId,
    required String itemId,
    required int quantity,
  }) = _BuyRequestDto;

  factory BuyRequestDto.fromJson(Map<String, dynamic> json) =>
      _$BuyRequestDtoFromJson(json);
}

@freezed
abstract class SellRequestDto with _$SellRequestDto {
  const factory SellRequestDto({
    required String itemId,
    required int quantity,
  }) = _SellRequestDto;

  factory SellRequestDto.fromJson(Map<String, dynamic> json) =>
      _$SellRequestDtoFromJson(json);
}

@freezed
abstract class BuyResponseDto with _$BuyResponseDto {
  const BuyResponseDto._();

  const factory BuyResponseDto({
    @Default(0) int gold,
    @Default('') String itemId,
    @Default(0) int quantity,
  }) = _BuyResponseDto;

  factory BuyResponseDto.fromJson(Map<String, dynamic> json) =>
      _$BuyResponseDtoFromJson(json);

  BuyOutcome toEntity() =>
      BuyOutcome(gold: gold, itemId: itemId, quantity: quantity);
}

@freezed
abstract class SellResponseDto with _$SellResponseDto {
  const SellResponseDto._();

  const factory SellResponseDto({@Default(0) int gold}) = _SellResponseDto;

  factory SellResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SellResponseDtoFromJson(json);

  SellOutcome toEntity() => SellOutcome(gold: gold);
}
