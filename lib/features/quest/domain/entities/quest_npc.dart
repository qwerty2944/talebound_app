/// 퀘스트를 주는 NPC 대사.
class QuestNpcDialogues {
  const QuestNpcDialogues({
    this.greeting = '어서 오게, 모험가여.',
    this.questAvailable = '자네에게 부탁할 일이 있네.',
    this.questComplete = '훌륭하네!',
    this.noQuest = '지금은 맡길 일이 없구먼.',
    this.farewell = '조심해서 다녀오게.',
  });

  final String greeting;
  final String questAvailable;
  final String questComplete;
  final String noQuest;
  final String farewell;
}

/// 퀘스트 게시 NPC(마을 장로/여관 주인/경비대장 등).
class QuestNpc {
  const QuestNpc({
    required this.id,
    required this.nameKo,
    required this.icon,
    required this.mapId,
    required this.description,
    required this.dialogues,
  });

  final String id;
  final String nameKo;
  final String icon;
  final String mapId;
  final String description;
  final QuestNpcDialogues dialogues;
}
