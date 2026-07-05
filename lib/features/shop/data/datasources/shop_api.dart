import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/api_client.dart';
import '../models/shop_request_dto.dart';

part 'shop_api.g.dart';

@RestApi()
abstract class ShopApi {
  factory ShopApi(Dio dio, {String? baseUrl}) = _ShopApi;

  @POST('/shop/buy')
  Future<BuyResponseDto> buy(@Body() BuyRequestDto body);

  @POST('/shop/sell')
  Future<SellResponseDto> sell(@Body() SellRequestDto body);
}

@Riverpod(keepAlive: true)
ShopApi shopApi(Ref ref) => ShopApi(ref.watch(dioProvider));
