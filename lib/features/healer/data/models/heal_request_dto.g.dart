// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heal_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HealRequestDto _$HealRequestDtoFromJson(Map<String, dynamic> json) =>
    _HealRequestDto(
      npcId: json['npcId'] as String,
      injuryIndex: (json['injuryIndex'] as num).toInt(),
    );

Map<String, dynamic> _$HealRequestDtoToJson(_HealRequestDto instance) =>
    <String, dynamic>{
      'npcId': instance.npcId,
      'injuryIndex': instance.injuryIndex,
    };

_HealEnvelopeDto _$HealEnvelopeDtoFromJson(Map<String, dynamic> json) =>
    _HealEnvelopeDto(
      data: json['data'] == null
          ? null
          : HealResultDto.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HealEnvelopeDtoToJson(_HealEnvelopeDto instance) =>
    <String, dynamic>{'data': instance.data?.toJson()};

_HealResultDto _$HealResultDtoFromJson(Map<String, dynamic> json) =>
    _HealResultDto(
      success: json['success'] as bool? ?? false,
      remainingGold: (json['remaining_gold'] as num?)?.toInt() ?? 0,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$HealResultDtoToJson(_HealResultDto instance) =>
    <String, dynamic>{
      'success': instance.success,
      'remaining_gold': instance.remainingGold,
      'message': instance.message,
    };
