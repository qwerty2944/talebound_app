/// 훈련사 대사(웹 dialogues와 동일 키).
class TrainerDialogues {
  const TrainerDialogues({
    required this.greeting,
    required this.train,
    required this.success,
    required this.notEnoughGold,
    required this.farewell,
  });

  final String greeting;
  final String train;
  final String success;
  final String notEnoughGold;
  final String farewell;
}

/// 훈련사 NPC.
class Trainer {
  const Trainer({
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
  final TrainerDialogues dialogues;
}
