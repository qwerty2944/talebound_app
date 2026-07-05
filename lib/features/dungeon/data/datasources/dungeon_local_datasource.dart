import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/dungeon_dto.dart';

part 'dungeon_local_datasource.g.dart';

/// 던전 정의는 번들 asset(assets/data/dungeons.json)에서 읽는다.
/// (웹 public/data/world/dungeons.json 과 동일 데이터)
class DungeonLocalDataSource {
  const DungeonLocalDataSource();

  Future<List<DungeonDto>> loadDungeons() async {
    final raw = await rootBundle.loadString('assets/data/dungeons.json');
    final json = jsonDecode(raw) as Map<String, dynamic>;
    return DungeonListDto.fromJson(json).dungeons;
  }
}

@Riverpod(keepAlive: true)
DungeonLocalDataSource dungeonLocalDataSource(Ref ref) =>
    const DungeonLocalDataSource();
