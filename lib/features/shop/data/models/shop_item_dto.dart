import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/item_rarity.dart';
import '../../domain/entities/shop_item.dart';

part 'shop_item_dto.freezed.dart';
part 'shop_item_dto.g.dart';

@freezed
abstract class ShopItemCatalogDto with _$ShopItemCatalogDto {
  const factory ShopItemCatalogDto({
    @Default(<ShopItemDto>[]) List<ShopItemDto> items,
  }) = _ShopItemCatalogDto;

  factory ShopItemCatalogDto.fromJson(Map<String, dynamic> json) =>
      _$ShopItemCatalogDtoFromJson(json);
}

@freezed
abstract class ShopItemDto with _$ShopItemDto {
  const ShopItemDto._();

  const factory ShopItemDto({
    required String id,
    @Default('아이템') String nameKo,
    @Default('misc') String type,
    @Default('') String subtype,
    @Default('common') String rarity,
    @Default(0) int value,
    @Default(false) bool stackable,
    String? weaponType,
  }) = _ShopItemDto;

  factory ShopItemDto.fromJson(Map<String, dynamic> json) =>
      _$ShopItemDtoFromJson(json);

  ShopItem toEntity() => ShopItem(
        id: id,
        nameKo: nameKo,
        type: type,
        subtype: subtype,
        rarity: ItemRarity.fromId(rarity),
        value: value,
        stackable: stackable,
        emoji: itemEmoji(type: type, subtype: subtype, weaponType: weaponType),
      );
}
