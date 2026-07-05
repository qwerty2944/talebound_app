import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../game/domain/entities/injury.dart';
import '../../domain/entities/healer.dart';

part 'healer_dto.freezed.dart';
part 'healer_dto.g.dart';

/// healers.json 루트: `{ type, description, npcs: [...] }`.
@freezed
abstract class HealerCatalogDto with _$HealerCatalogDto {
  const factory HealerCatalogDto({
    @Default(<HealerDto>[]) List<HealerDto> npcs,
  }) = _HealerCatalogDto;

  factory HealerCatalogDto.fromJson(Map<String, dynamic> json) =>
      _$HealerCatalogDtoFromJson(json);
}

@freezed
abstract class HealerDto with _$HealerDto {
  const HealerDto._();

  const factory HealerDto({
    required String id,
    @Default('치료사') String nameKo,
    @Default('🏥') String icon,
    @Default('') String mapId,
    @Default('') String description,
    @Default(HealerDialoguesDto()) HealerDialoguesDto dialogues,
    @Default(HealerServicesDto()) HealerServicesDto services,
  }) = _HealerDto;

  factory HealerDto.fromJson(Map<String, dynamic> json) =>
      _$HealerDtoFromJson(json);

  Healer toEntity() => Healer(
        id: id,
        nameKo: nameKo,
        icon: icon,
        mapId: mapId,
        description: description,
        dialogues: dialogues.toEntity(),
        pricing: {
          InjurySeverity.light: services.healing.light.gold,
          InjurySeverity.medium: services.healing.medium.gold,
          InjurySeverity.critical: services.healing.critical.gold,
        },
      );
}

@freezed
abstract class HealerDialoguesDto with _$HealerDialoguesDto {
  const HealerDialoguesDto._();

  const factory HealerDialoguesDto({
    @Default('어서 오세요, 여행자님.') String greeting,
    @Default('건강해 보이시네요!') String noInjury,
    @Default('치료가 완료되었습니다.') String healSuccess,
    @Default('금화가 부족하시군요...') String notEnoughGold,
    @Default('건강하세요!') String farewell,
  }) = _HealerDialoguesDto;

  factory HealerDialoguesDto.fromJson(Map<String, dynamic> json) =>
      _$HealerDialoguesDtoFromJson(json);

  HealerDialogues toEntity() => HealerDialogues(
        greeting: greeting,
        noInjury: noInjury,
        healSuccess: healSuccess,
        notEnoughGold: notEnoughGold,
        farewell: farewell,
      );
}

@freezed
abstract class HealerServicesDto with _$HealerServicesDto {
  const factory HealerServicesDto({
    @Default(HealingPricesDto()) HealingPricesDto healing,
  }) = _HealerServicesDto;

  factory HealerServicesDto.fromJson(Map<String, dynamic> json) =>
      _$HealerServicesDtoFromJson(json);
}

@freezed
abstract class HealingPricesDto with _$HealingPricesDto {
  const factory HealingPricesDto({
    @Default(HealPriceDto()) HealPriceDto light,
    @Default(HealPriceDto()) HealPriceDto medium,
    @Default(HealPriceDto()) HealPriceDto critical,
  }) = _HealingPricesDto;

  factory HealingPricesDto.fromJson(Map<String, dynamic> json) =>
      _$HealingPricesDtoFromJson(json);
}

@freezed
abstract class HealPriceDto with _$HealPriceDto {
  const factory HealPriceDto({
    @Default(0) int gold,
    @Default('') String description,
  }) = _HealPriceDto;

  factory HealPriceDto.fromJson(Map<String, dynamic> json) =>
      _$HealPriceDtoFromJson(json);
}
