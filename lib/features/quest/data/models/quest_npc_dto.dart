import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/quest_npc.dart';

part 'quest_npc_dto.freezed.dart';
part 'quest_npc_dto.g.dart';

/// quest_npcs.json 루트: `{ type, description, npcs: [...] }`.
@freezed
abstract class QuestNpcCatalogDto with _$QuestNpcCatalogDto {
  const factory QuestNpcCatalogDto({
    @Default(<QuestNpcDto>[]) List<QuestNpcDto> npcs,
  }) = _QuestNpcCatalogDto;

  factory QuestNpcCatalogDto.fromJson(Map<String, dynamic> json) =>
      _$QuestNpcCatalogDtoFromJson(json);
}

@freezed
abstract class QuestNpcDto with _$QuestNpcDto {
  const QuestNpcDto._();

  const factory QuestNpcDto({
    required String id,
    @Default('NPC') String nameKo,
    @Default('📜') String icon,
    @Default('') String mapId,
    @Default('') String description,
    @Default(QuestNpcDialoguesDto()) QuestNpcDialoguesDto dialogues,
  }) = _QuestNpcDto;

  factory QuestNpcDto.fromJson(Map<String, dynamic> json) =>
      _$QuestNpcDtoFromJson(json);

  QuestNpc toEntity() => QuestNpc(
        id: id,
        nameKo: nameKo,
        icon: icon,
        mapId: mapId,
        description: description,
        dialogues: dialogues.toEntity(),
      );
}

@freezed
abstract class QuestNpcDialoguesDto with _$QuestNpcDialoguesDto {
  const QuestNpcDialoguesDto._();

  const factory QuestNpcDialoguesDto({
    @Default('어서 오게, 모험가여.') String greeting,
    @Default('자네에게 부탁할 일이 있네.') String questAvailable,
    @Default('훌륭하네!') String questComplete,
    @Default('지금은 맡길 일이 없구먼.') String noQuest,
    @Default('조심해서 다녀오게.') String farewell,
  }) = _QuestNpcDialoguesDto;

  factory QuestNpcDialoguesDto.fromJson(Map<String, dynamic> json) =>
      _$QuestNpcDialoguesDtoFromJson(json);

  QuestNpcDialogues toEntity() => QuestNpcDialogues(
        greeting: greeting,
        questAvailable: questAvailable,
        questComplete: questComplete,
        noQuest: noQuest,
        farewell: farewell,
      );
}
