import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/shop_repository_impl.dart';
import '../entities/shop_transaction.dart';
import '../repositories/shop_repository.dart';

part 'buy_item.g.dart';

class BuyItem {
  const BuyItem(this._repository);

  final ShopRepository _repository;

  Future<BuyOutcome> call({
    required String npcId,
    required String itemId,
    required int quantity,
  }) =>
      _repository.buy(npcId: npcId, itemId: itemId, quantity: quantity);
}

@riverpod
BuyItem buyItem(Ref ref) => BuyItem(ref.watch(shopRepositoryProvider));
