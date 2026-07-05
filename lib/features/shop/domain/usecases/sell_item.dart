import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/shop_repository_impl.dart';
import '../entities/shop_transaction.dart';
import '../repositories/shop_repository.dart';

part 'sell_item.g.dart';

class SellItem {
  const SellItem(this._repository);

  final ShopRepository _repository;

  Future<SellOutcome> call({
    required String itemId,
    required int quantity,
  }) =>
      _repository.sell(itemId: itemId, quantity: quantity);
}

@riverpod
SellItem sellItem(Ref ref) => SellItem(ref.watch(shopRepositoryProvider));
