import 'shop_item.dart';

/// 상인 대사 모음(웹 dialogues와 동일 키).
class MerchantDialogues {
  const MerchantDialogues({
    required this.greeting,
    required this.browse,
    required this.purchase,
    required this.notEnoughGold,
    required this.farewell,
  });

  final String greeting;
  final String browse;
  final String purchase;
  final String notEnoughGold;
  final String farewell;
}

/// 상인 NPC + 취급 품목(stock을 카탈로그로 해석한 ShopItem 목록).
class Merchant {
  const Merchant({
    required this.id,
    required this.nameKo,
    required this.icon,
    required this.mapId,
    required this.description,
    required this.stock,
    required this.dialogues,
  });

  final String id;
  final String nameKo;
  final String icon;
  final String mapId;
  final String description;
  final List<ShopItem> stock;
  final MerchantDialogues dialogues;
}
