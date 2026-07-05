import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/dungeon.dart';

part 'dungeon_dto.freezed.dart';
part 'dungeon_dto.g.dart';

@freezed
abstract class DungeonListDto with _$DungeonListDto {
  const factory DungeonListDto({
    @Default(<DungeonDto>[]) List<DungeonDto> dungeons,
  }) = _DungeonListDto;

  factory DungeonListDto.fromJson(Map<String, dynamic> json) =>
      _$DungeonListDtoFromJson(json);
}

@freezed
abstract class DungeonClearRewardsDto with _$DungeonClearRewardsDto {
  const factory DungeonClearRewardsDto({
    @Default(0) int exp,
    @Default(0) int gold,
    @Default(<DungeonRewardItemDto>[]) List<DungeonRewardItemDto> items,
  }) = _DungeonClearRewardsDto;

  factory DungeonClearRewardsDto.fromJson(Map<String, dynamic> json) =>
      _$DungeonClearRewardsDtoFromJson(json);
}

@freezed
abstract class DungeonRewardItemDto with _$DungeonRewardItemDto {
  const DungeonRewardItemDto._();

  const factory DungeonRewardItemDto({
    required String itemId,
    @Default(1) int quantity,
  }) = _DungeonRewardItemDto;

  factory DungeonRewardItemDto.fromJson(Map<String, dynamic> json) =>
      _$DungeonRewardItemDtoFromJson(json);

  DungeonRewardItem toEntity() =>
      DungeonRewardItem(itemId: itemId, quantity: quantity);
}

@freezed
abstract class DungeonDto with _$DungeonDto {
  const DungeonDto._();

  const factory DungeonDto({
    required String id,
    @Default('던전') String nameKo,
    @Default('') String descriptionKo,
    @Default('🏛️') String icon,
    @Default('') String entryMapId,
    @Default(1) int minLevel,
    @Default(0) int fatigueCost,
    @Default(<String>[]) List<String> waves,
    @Default(DungeonClearRewardsDto()) DungeonClearRewardsDto clearRewards,
  }) = _DungeonDto;

  factory DungeonDto.fromJson(Map<String, dynamic> json) =>
      _$DungeonDtoFromJson(json);

  Dungeon toEntity() => Dungeon(
        id: id,
        nameKo: nameKo,
        descriptionKo: descriptionKo,
        icon: icon,
        entryMapId: entryMapId,
        minLevel: minLevel,
        fatigueCost: fatigueCost,
        waveMonsterIds: waves,
        clearExp: clearRewards.exp,
        clearGold: clearRewards.gold,
        clearItems: clearRewards.items.map((i) => i.toEntity()).toList(),
      );
}
