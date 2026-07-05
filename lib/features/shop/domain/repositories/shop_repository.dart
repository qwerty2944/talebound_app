import '../entities/merchant.dart';
import '../entities/shop_item.dart';
import '../entities/shop_transaction.dart';

abstract class ShopRepository {
  /// 상인 목록(각 상인의 stock을 카탈로그로 해석해 ShopItem으로 채운다).
  Future<List<Merchant>> getMerchants();

  /// itemId → ShopItem 카탈로그(판매 탭에서 인벤 아이템 메타 해석에 사용).
  Future<Map<String, ShopItem>> getItemCatalog();

  Future<BuyOutcome> buy({
    required String npcId,
    required String itemId,
    required int quantity,
  });

  Future<SellOutcome> sell({
    required String itemId,
    required int quantity,
  });
}
