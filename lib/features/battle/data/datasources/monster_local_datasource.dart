import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/monster_dto.dart';

part 'monster_local_datasource.g.dart';

/// 몬스터 목록은 번들 asset(assets/data/monsters.json)에서 읽는다.
/// (백엔드에 몬스터 목록 REST가 없어 프론트 데이터를 트리밍해 동봉)
class MonsterLocalDataSource {
  const MonsterLocalDataSource();

  Future<List<MonsterDto>> loadMonsters() async {
    final raw = await rootBundle.loadString('assets/data/monsters.json');
    final json = jsonDecode(raw) as Map<String, dynamic>;
    return MonsterListDto.fromJson(json).monsters;
  }

  /// id → MonsterDto 조회용 맵 (던전 웨이브 몬스터 스탯 해석에 사용).
  Future<Map<String, MonsterDto>> loadMonsterMap() async {
    final list = await loadMonsters();
    return {for (final m in list) m.id: m};
  }
}

@Riverpod(keepAlive: true)
MonsterLocalDataSource monsterLocalDataSource(Ref ref) =>
    const MonsterLocalDataSource();
