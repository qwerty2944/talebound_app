import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/merchant.dart';
import '../../domain/usecases/get_merchants.dart';

part 'merchant_list_controller.g.dart';

@riverpod
Future<List<Merchant>> merchantList(Ref ref) =>
    ref.watch(getMerchantsProvider).call();
