import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/monster.dart';

part 'monster_dto.freezed.dart';
part 'monster_dto.g.dart';

@freezed
abstract class MonsterListDto with _$MonsterListDto {
  const factory MonsterListDto({@Default(<MonsterDto>[]) List<MonsterDto> monsters}) =
      _MonsterListDto;

  factory MonsterListDto.fromJson(Map<String, dynamic> json) =>
      _$MonsterListDtoFromJson(json);
}

@freezed
abstract class MonsterDto with _$MonsterDto {
  const MonsterDto._();

  const factory MonsterDto({
    required String id,
    @Default('몬스터') String nameKo,
    @Default('👾') String icon,
    @Default('normal') String rank,
    @Default(1) int level,
    @Default('none') String element,
    @Default(<String>[]) List<String> mapIds,
    @Default(30) int hp,
    @Default(5) int attack,
    @Default(0) int defense,
    @Default(5) int speed,
    @Default(0) int exp,
    @Default(0) int gold,
  }) = _MonsterDto;

  factory MonsterDto.fromJson(Map<String, dynamic> json) =>
      _$MonsterDtoFromJson(json);

  Monster toEntity() => Monster(
        id: id,
        nameKo: nameKo,
        icon: icon,
        rank: rank,
        level: level,
        element: element,
        mapIds: mapIds,
        hp: hp,
        attack: attack,
        defense: defense,
        speed: speed,
        exp: exp,
        gold: gold,
      );
}
