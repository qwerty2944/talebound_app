import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/api_client.dart';
import '../models/inventory_dto.dart';

part 'inventory_api.g.dart';

/// 인벤토리는 웹과 동일하게 RPC 프록시(`POST /api/rpc/inventory_get`)로 읽는다.
/// baseUrl 이 이미 `.../api` 이므로 경로는 `/rpc/...`.
/// 장비 저장은 `PATCH /api/profile { equipment }`.
@RestApi()
abstract class InventoryApi {
  factory InventoryApi(Dio dio, {String? baseUrl}) = _InventoryApi;

  @POST('/rpc/inventory_get')
  Future<InventoryEnvelopeDto> getInventory(@Body() Map<String, dynamic> body);

  @PATCH('/profile')
  Future<void> patchProfile(@Body() Map<String, dynamic> body);
}

@Riverpod(keepAlive: true)
InventoryApi inventoryApi(Ref ref) => InventoryApi(ref.watch(dioProvider));
