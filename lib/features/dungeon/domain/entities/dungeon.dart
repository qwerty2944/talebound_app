/// 던전 정의 (번들 asset assets/data/dungeons.json 기반).
class Dungeon {
  const Dungeon({
    required this.id,
    required this.nameKo,
    required this.descriptionKo,
    required this.icon,
    required this.entryMapId,
    required this.minLevel,
    required this.fatigueCost,
    required this.waveMonsterIds,
    required this.clearExp,
    required this.clearGold,
    required this.clearItems,
  });

  final String id;
  final String nameKo;
  final String descriptionKo;
  final String icon;
  final String entryMapId;
  final int minLevel;
  final int fatigueCost;
  final List<String> waveMonsterIds;
  final int clearExp;
  final int clearGold;
  final List<DungeonRewardItem> clearItems;

  int get totalWaves => waveMonsterIds.length;
}

class DungeonRewardItem {
  const DungeonRewardItem({required this.itemId, required this.quantity});

  final String itemId;
  final int quantity;
}
