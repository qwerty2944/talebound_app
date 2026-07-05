import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/merchant_dto.dart';
import '../models/shop_item_dto.dart';

part 'shop_local_datasource.g.dart';

/// 상인/아이템 카탈로그는 번들 asset에서 읽는다.
/// (백엔드에 상인·아이템 목록 REST가 없어 프론트 데이터를 트리밍해 동봉)
class ShopLocalDataSource {
  const ShopLocalDataSource();

  Future<List<MerchantDto>> loadMerchants() async {
    final raw = await rootBundle.loadString('assets/data/merchants.json');
    final json = jsonDecode(raw) as Map<String, dynamic>;
    return MerchantListDto.fromJson(json).merchants;
  }

  /// itemId → ShopItemDto 조회용 맵 (stock/인벤 아이템 메타 해석에 사용).
  Future<Map<String, ShopItemDto>> loadItemMap() async {
    final raw = await rootBundle.loadString('assets/data/shop_items.json');
    final json = jsonDecode(raw) as Map<String, dynamic>;
    final catalog = ShopItemCatalogDto.fromJson(json);
    return {for (final it in catalog.items) it.id: it};
  }
}

@Riverpod(keepAlive: true)
ShopLocalDataSource shopLocalDataSource(Ref ref) => const ShopLocalDataSource();
