// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'healer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HealerCatalogDto _$HealerCatalogDtoFromJson(Map<String, dynamic> json) =>
    _HealerCatalogDto(
      npcs:
          (json['npcs'] as List<dynamic>?)
              ?.map((e) => HealerDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <HealerDto>[],
    );

Map<String, dynamic> _$HealerCatalogDtoToJson(_HealerCatalogDto instance) =>
    <String, dynamic>{'npcs': instance.npcs.map((e) => e.toJson()).toList()};

_HealerDto _$HealerDtoFromJson(Map<String, dynamic> json) => _HealerDto(
  id: json['id'] as String,
  nameKo: json['nameKo'] as String? ?? '치료사',
  icon: json['icon'] as String? ?? '🏥',
  mapId: json['mapId'] as String? ?? '',
  description: json['description'] as String? ?? '',
  dialogues: json['dialogues'] == null
      ? const HealerDialoguesDto()
      : HealerDialoguesDto.fromJson(json['dialogues'] as Map<String, dynamic>),
  services: json['services'] == null
      ? const HealerServicesDto()
      : HealerServicesDto.fromJson(json['services'] as Map<String, dynamic>),
);

Map<String, dynamic> _$HealerDtoToJson(_HealerDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nameKo': instance.nameKo,
      'icon': instance.icon,
      'mapId': instance.mapId,
      'description': instance.description,
      'dialogues': instance.dialogues.toJson(),
      'services': instance.services.toJson(),
    };

_HealerDialoguesDto _$HealerDialoguesDtoFromJson(Map<String, dynamic> json) =>
    _HealerDialoguesDto(
      greeting: json['greeting'] as String? ?? '어서 오세요, 여행자님.',
      noInjury: json['noInjury'] as String? ?? '건강해 보이시네요!',
      healSuccess: json['healSuccess'] as String? ?? '치료가 완료되었습니다.',
      notEnoughGold: json['notEnoughGold'] as String? ?? '금화가 부족하시군요...',
      farewell: json['farewell'] as String? ?? '건강하세요!',
    );

Map<String, dynamic> _$HealerDialoguesDtoToJson(_HealerDialoguesDto instance) =>
    <String, dynamic>{
      'greeting': instance.greeting,
      'noInjury': instance.noInjury,
      'healSuccess': instance.healSuccess,
      'notEnoughGold': instance.notEnoughGold,
      'farewell': instance.farewell,
    };

_HealerServicesDto _$HealerServicesDtoFromJson(Map<String, dynamic> json) =>
    _HealerServicesDto(
      healing: json['healing'] == null
          ? const HealingPricesDto()
          : HealingPricesDto.fromJson(json['healing'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HealerServicesDtoToJson(_HealerServicesDto instance) =>
    <String, dynamic>{'healing': instance.healing.toJson()};

_HealingPricesDto _$HealingPricesDtoFromJson(Map<String, dynamic> json) =>
    _HealingPricesDto(
      light: json['light'] == null
          ? const HealPriceDto()
          : HealPriceDto.fromJson(json['light'] as Map<String, dynamic>),
      medium: json['medium'] == null
          ? const HealPriceDto()
          : HealPriceDto.fromJson(json['medium'] as Map<String, dynamic>),
      critical: json['critical'] == null
          ? const HealPriceDto()
          : HealPriceDto.fromJson(json['critical'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HealingPricesDtoToJson(_HealingPricesDto instance) =>
    <String, dynamic>{
      'light': instance.light.toJson(),
      'medium': instance.medium.toJson(),
      'critical': instance.critical.toJson(),
    };

_HealPriceDto _$HealPriceDtoFromJson(Map<String, dynamic> json) =>
    _HealPriceDto(
      gold: (json['gold'] as num?)?.toInt() ?? 0,
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$HealPriceDtoToJson(_HealPriceDto instance) =>
    <String, dynamic>{
      'gold': instance.gold,
      'description': instance.description,
    };
