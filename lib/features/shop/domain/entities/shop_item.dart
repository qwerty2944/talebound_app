import 'item_rarity.dart';

/// 상점/인벤에서 다루는 아이템 정의(로컬 카탈로그에서 해석).
class ShopItem {
  const ShopItem({
    required this.id,
    required this.nameKo,
    required this.type,
    required this.subtype,
    required this.rarity,
    required this.value,
    required this.stackable,
    required this.emoji,
  });

  final String id;
  final String nameKo;
  final String type;
  final String subtype;
  final ItemRarity rarity;

  /// 구매 단가(골드). 서버 권위와 동일한 game-data value.
  final int value;
  final bool stackable;
  final String emoji;

  /// 판매 단가 = floor(value * 0.4) (백엔드 getItemSellPrice와 동일, sellPrice 미정의 기준).
  int get sellPrice => (value * 0.4).floor();
}
