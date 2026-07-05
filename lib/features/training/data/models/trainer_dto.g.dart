// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TrainerListDto _$TrainerListDtoFromJson(Map<String, dynamic> json) =>
    _TrainerListDto(
      trainers:
          (json['trainers'] as List<dynamic>?)
              ?.map((e) => TrainerDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <TrainerDto>[],
    );

Map<String, dynamic> _$TrainerListDtoToJson(_TrainerListDto instance) =>
    <String, dynamic>{
      'trainers': instance.trainers.map((e) => e.toJson()).toList(),
    };

_TrainerDto _$TrainerDtoFromJson(Map<String, dynamic> json) => _TrainerDto(
  id: json['id'] as String,
  nameKo: json['nameKo'] as String? ?? '훈련사',
  icon: json['icon'] as String? ?? '⚔️',
  mapId: json['mapId'] as String? ?? '',
  description: json['description'] as String? ?? '',
  dialogues: json['dialogues'] == null
      ? const TrainerDialoguesDto()
      : TrainerDialoguesDto.fromJson(json['dialogues'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TrainerDtoToJson(_TrainerDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nameKo': instance.nameKo,
      'icon': instance.icon,
      'mapId': instance.mapId,
      'description': instance.description,
      'dialogues': instance.dialogues.toJson(),
    };

_TrainerDialoguesDto _$TrainerDialoguesDtoFromJson(Map<String, dynamic> json) =>
    _TrainerDialoguesDto(
      greeting: json['greeting'] as String? ?? '훈련하러 왔나?',
      train: json['train'] as String? ?? '집중해!',
      success: json['success'] as String? ?? '잘했어.',
      notEnoughGold: json['notEnoughGold'] as String? ?? '훈련에도 비용이 든다네.',
      farewell: json['farewell'] as String? ?? '꾸준히 훈련하게.',
    );

Map<String, dynamic> _$TrainerDialoguesDtoToJson(
  _TrainerDialoguesDto instance,
) => <String, dynamic>{
  'greeting': instance.greeting,
  'train': instance.train,
  'success': instance.success,
  'notEnoughGold': instance.notEnoughGold,
  'farewell': instance.farewell,
};
