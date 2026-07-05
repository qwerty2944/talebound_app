import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../battle/data/datasources/monster_local_datasource.dart';
import '../../../battle/domain/entities/monster.dart';
import '../../domain/entities/dungeon.dart';
import '../../domain/usecases/get_dungeons.dart';

part 'dungeon_list_controller.g.dart';

@riverpod
Future<List<Dungeon>> dungeonList(Ref ref) =>
    ref.watch(getDungeonsProvider).call();

/// 던전 웨이브 몬스터 스탯 해석용 카탈로그(id → Monster).
/// 서버는 웨이브마다 monster{id,level}만 내려주므로 스탯은 번들 데이터에서 찾는다.
@riverpod
Future<Map<String, Monster>> monsterCatalog(Ref ref) async {
  final map = await ref.watch(monsterLocalDataSourceProvider).loadMonsterMap();
  return map.map((id, dto) => MapEntry(id, dto.toEntity()));
}
