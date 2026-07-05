// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quest_npc_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuestNpcCatalogDto _$QuestNpcCatalogDtoFromJson(Map<String, dynamic> json) =>
    _QuestNpcCatalogDto(
      npcs:
          (json['npcs'] as List<dynamic>?)
              ?.map((e) => QuestNpcDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <QuestNpcDto>[],
    );

Map<String, dynamic> _$QuestNpcCatalogDtoToJson(_QuestNpcCatalogDto instance) =>
    <String, dynamic>{'npcs': instance.npcs.map((e) => e.toJson()).toList()};

_QuestNpcDto _$QuestNpcDtoFromJson(Map<String, dynamic> json) => _QuestNpcDto(
  id: json['id'] as String,
  nameKo: json['nameKo'] as String? ?? 'NPC',
  icon: json['icon'] as String? ?? '📜',
  mapId: json['mapId'] as String? ?? '',
  description: json['description'] as String? ?? '',
  dialogues: json['dialogues'] == null
      ? const QuestNpcDialoguesDto()
      : QuestNpcDialoguesDto.fromJson(
          json['dialogues'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$QuestNpcDtoToJson(_QuestNpcDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nameKo': instance.nameKo,
      'icon': instance.icon,
      'mapId': instance.mapId,
      'description': instance.description,
      'dialogues': instance.dialogues.toJson(),
    };

_QuestNpcDialoguesDto _$QuestNpcDialoguesDtoFromJson(
  Map<String, dynamic> json,
) => _QuestNpcDialoguesDto(
  greeting: json['greeting'] as String? ?? '어서 오게, 모험가여.',
  questAvailable: json['questAvailable'] as String? ?? '자네에게 부탁할 일이 있네.',
  questComplete: json['questComplete'] as String? ?? '훌륭하네!',
  noQuest: json['noQuest'] as String? ?? '지금은 맡길 일이 없구먼.',
  farewell: json['farewell'] as String? ?? '조심해서 다녀오게.',
);

Map<String, dynamic> _$QuestNpcDialoguesDtoToJson(
  _QuestNpcDialoguesDto instance,
) => <String, dynamic>{
  'greeting': instance.greeting,
  'questAvailable': instance.questAvailable,
  'questComplete': instance.questComplete,
  'noQuest': instance.noQuest,
  'farewell': instance.farewell,
};
