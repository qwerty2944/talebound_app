import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_item_dto.freezed.dart';
part 'game_item_dto.g.dart';

/// `assets/data/items.json` 의 아이템 메타(웹 public/data/items/items.json 트리밍본).
/// 인벤토리 표시 + 장착 슬롯/스탯 해석에 사용한다.
@freezed
abstract class GameItemDto with _$GameItemDto {
  const factory GameItemDto({
    required String id,
    @Default('') String nameKo,
    @Default('') String nameEn,
    @Default('misc') String type, // equipment | consumable | material | misc
    String? subtype, // weapon | armor | accessory | food | potion ...
    @Default('common') String rarity,
    @Default(0) int value,
    @Default(false) bool stackable,
    String? weaponType, // sword | axe | shield | bow ...
    String? slot, // armor 방어구: helmet|armor|cloth|pant / 장신구: ring|necklace|earring|bracelet
    @Default(<String, num>{}) Map<String, num> stats,
    @Default(<String, num>{}) Map<String, num> requirements,
    String? icon,
  }) = _GameItemDto;

  factory GameItemDto.fromJson(Map<String, dynamic> json) =>
      _$GameItemDtoFromJson(json);
}

@freezed
abstract class GameItemFileDto with _$GameItemFileDto {
  const factory GameItemFileDto({
    @Default(<GameItemDto>[]) List<GameItemDto> items,
  }) = _GameItemFileDto;

  factory GameItemFileDto.fromJson(Map<String, dynamic> json) =>
      _$GameItemFileDtoFromJson(json);
}
