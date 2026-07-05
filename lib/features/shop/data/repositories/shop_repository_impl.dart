import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/api_exception.dart';
import '../../domain/entities/merchant.dart';
import '../../domain/entities/shop_item.dart';
import '../../domain/entities/shop_transaction.dart';
import '../../domain/repositories/shop_repository.dart';
import '../datasources/shop_api.dart';
import '../datasources/shop_local_datasource.dart';
import '../models/merchant_dto.dart';
import '../models/shop_request_dto.dart';

part 'shop_repository_impl.g.dart';

class ShopRepositoryImpl implements ShopRepository {
  ShopRepositoryImpl(this._api, this._local);

  final ShopApi _api;
  final ShopLocalDataSource _local;

  @override
  Future<List<Merchant>> getMerchants() async {
    final merchants = await _local.loadMerchants();
    final catalog = await _local.loadItemMap();
    return merchants.map((m) {
      final stock = <ShopItem>[];
      for (final id in m.stock) {
        final dto = catalog[id];
        if (dto != null) stock.add(dto.toEntity());
      }
      return Merchant(
        id: m.id,
        nameKo: m.nameKo,
        icon: m.icon,
        mapId: m.mapId,
        description: m.description,
        stock: stock,
        dialogues: _dialogues(m.dialogues),
      );
    }).toList();
  }

  @override
  Future<Map<String, ShopItem>> getItemCatalog() async {
    final map = await _local.loadItemMap();
    return {for (final e in map.entries) e.key: e.value.toEntity()};
  }

  @override
  Future<BuyOutcome> buy({
    required String npcId,
    required String itemId,
    required int quantity,
  }) async {
    try {
      final res = await _api.buy(
        BuyRequestDto(npcId: npcId, itemId: itemId, quantity: quantity),
      );
      return res.toEntity();
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  @override
  Future<SellOutcome> sell({
    required String itemId,
    required int quantity,
  }) async {
    try {
      final res = await _api.sell(
        SellRequestDto(itemId: itemId, quantity: quantity),
      );
      return res.toEntity();
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  MerchantDialogues _dialogues(MerchantDialoguesDto d) => MerchantDialogues(
        greeting: d.greeting,
        browse: d.browse,
        purchase: d.purchase,
        notEnoughGold: d.notEnoughGold,
        farewell: d.farewell,
      );
}

@Riverpod(keepAlive: true)
ShopRepository shopRepository(Ref ref) => ShopRepositoryImpl(
      ref.watch(shopApiProvider),
      ref.watch(shopLocalDataSourceProvider),
    );
