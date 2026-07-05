// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'train_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProficiencyEnvelopeDto _$ProficiencyEnvelopeDtoFromJson(
  Map<String, dynamic> json,
) => _ProficiencyEnvelopeDto(
  data:
      (json['data'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as num),
      ) ??
      const <String, num>{},
);

Map<String, dynamic> _$ProficiencyEnvelopeDtoToJson(
  _ProficiencyEnvelopeDto instance,
) => <String, dynamic>{'data': instance.data};

_TrainRequestDto _$TrainRequestDtoFromJson(Map<String, dynamic> json) =>
    _TrainRequestDto(proficiencyType: json['proficiencyType'] as String);

Map<String, dynamic> _$TrainRequestDtoToJson(_TrainRequestDto instance) =>
    <String, dynamic>{'proficiencyType': instance.proficiencyType};

_TrainResponseDto _$TrainResponseDtoFromJson(Map<String, dynamic> json) =>
    _TrainResponseDto(
      gold: (json['gold'] as num?)?.toInt() ?? 0,
      type: json['type'] as String? ?? '',
      value: (json['value'] as num?)?.toInt() ?? 0,
      cost: (json['cost'] as num?)?.toInt() ?? 0,
      nextCost: (json['nextCost'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$TrainResponseDtoToJson(_TrainResponseDto instance) =>
    <String, dynamic>{
      'gold': instance.gold,
      'type': instance.type,
      'value': instance.value,
      'cost': instance.cost,
      'nextCost': instance.nextCost,
    };
