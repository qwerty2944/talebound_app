/// 퀘스트 상태 — 서버 권위(available/accepted/completed/claimed).
enum QuestStatus { available, accepted, completed, claimed }

QuestStatus questStatusFromString(String raw) => switch (raw) {
      'accepted' => QuestStatus.accepted,
      'completed' => QuestStatus.completed,
      'claimed' => QuestStatus.claimed,
      _ => QuestStatus.available,
    };

/// 퀘스트 목표 종류.
enum QuestObjectiveType { kill, collect, visit, unknown }

QuestObjectiveType questObjectiveTypeFromString(String raw) => switch (raw) {
      'kill' => QuestObjectiveType.kill,
      'collect' => QuestObjectiveType.collect,
      'visit' => QuestObjectiveType.visit,
      _ => QuestObjectiveType.unknown,
    };

class QuestObjective {
  const QuestObjective({
    required this.type,
    this.monsterId,
    this.itemId,
    this.mapId,
    this.count,
  });

  final QuestObjectiveType type;
  final String? monsterId;
  final String? itemId;
  final String? mapId;
  final int? count;

  /// 목표 총량 (kill/collect 개수, 그 외 1).
  int get target => count ?? 1;
}

class QuestRewardItem {
  const QuestRewardItem({required this.itemId, required this.quantity});

  final String itemId;
  final int quantity;
}

class QuestReward {
  const QuestReward({
    required this.exp,
    required this.gold,
    required this.items,
  });

  final int exp;
  final int gold;
  final List<QuestRewardItem> items;
}

/// 퀘스트 정의 + 유저 상태/진행도 병합 엔티티.
class Quest {
  const Quest({
    required this.id,
    required this.npcId,
    required this.nameKo,
    required this.descriptionKo,
    required this.minLevel,
    required this.objective,
    required this.reward,
    required this.status,
    required this.killProgress,
  });

  final String id;

  /// 퀘스트를 주는 NPC id(guard_captain 등). 대화형 UI 그룹핑에 사용.
  final String npcId;
  final String nameKo;
  final String descriptionKo;
  final int minLevel;
  final QuestObjective objective;
  final QuestReward reward;
  final QuestStatus status;

  /// kill 목표 누적 처치 수(그 외 목표는 0).
  final int killProgress;

  /// kill 목표 진행도(예: 2/3). kill이 아니면 null.
  String? get killProgressLabel => objective.type == QuestObjectiveType.kill
      ? '$killProgress/${objective.target}'
      : null;
}

/// `/api/quest/claim` 보상 수령 결과.
class QuestClaimResult {
  const QuestClaimResult({
    required this.questId,
    required this.exp,
    required this.gold,
    required this.items,
    required this.leveledUp,
    required this.newLevel,
    required this.totalGold,
    required this.totalExp,
  });

  final String questId;
  final int exp;
  final int gold;
  final List<QuestRewardItem> items;
  final bool leveledUp;
  final int newLevel;
  final int totalGold;
  final int totalExp;
}
