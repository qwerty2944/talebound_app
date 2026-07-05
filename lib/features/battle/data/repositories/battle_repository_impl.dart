import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/api_exception.dart';
import '../../domain/entities/battle_result.dart';
import '../../domain/entities/monster.dart';
import '../../domain/repositories/battle_repository.dart';
import '../datasources/battle_api.dart';
import '../datasources/monster_local_datasource.dart';
import '../models/battle_dto.dart';

part 'battle_repository_impl.g.dart';

class BattleRepositoryImpl implements BattleRepository {
  BattleRepositoryImpl(this._api, this._monsters);

  final BattleApi _api;
  final MonsterLocalDataSource _monsters;

  @override
  Future<List<Monster>> getMonsters() async {
    final dtos = await _monsters.loadMonsters();
    return dtos.map((d) => d.toEntity()).toList();
  }

  @override
  Future<StartedBattle> start(String monsterId) async {
    try {
      final res = await _api.start(StartBattleRequestDto(monsterId: monsterId));
      return res.toEntity();
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  @override
  Future<BattleReward> complete({
    required String battleToken,
    required String result,
    required int currentHp,
    required int currentMp,
  }) async {
    try {
      final res = await _api.complete(CompleteBattleRequestDto(
        battleToken: battleToken,
        result: result,
        currentHp: currentHp,
        currentMp: currentMp,
      ));
      return res.toEntity();
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }
}

@Riverpod(keepAlive: true)
BattleRepository battleRepository(Ref ref) => BattleRepositoryImpl(
      ref.watch(battleApiProvider),
      ref.watch(monsterLocalDataSourceProvider),
    );
