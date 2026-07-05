import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/shop_repository_impl.dart';
import '../entities/merchant.dart';
import '../repositories/shop_repository.dart';

part 'get_merchants.g.dart';

class GetMerchants {
  const GetMerchants(this._repository);

  final ShopRepository _repository;

  Future<List<Merchant>> call() => _repository.getMerchants();
}

@riverpod
GetMerchants getMerchants(Ref ref) =>
    GetMerchants(ref.watch(shopRepositoryProvider));
