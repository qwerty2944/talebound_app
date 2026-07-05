import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/api_exception.dart';
import '../../domain/entities/dungeon.dart';
import '../../domain/entities/dungeon_run.dart';
import '../../domain/repositories/dungeon_repository.dart';
import '../datasources/dungeon_api.dart';
import '../datasources/dungeon_local_datasource.dart';
import '../models/dungeon_run_dto.dart';

part 'dungeon_repository_impl.g.dart';

class DungeonRepositoryImpl implements DungeonRepository {
  DungeonRepositoryImpl(this._api, this._local);

  final DungeonApi _api;
  final DungeonLocalDataSource _local;

  @override
  Future<List<Dungeon>> getDungeons() async {
    final dtos = await _local.loadDungeons();
    return dtos.map((d) => d.toEntity()).toList();
  }

  @override
  Future<DungeonRunState> start(String dungeonId) async {
    try {
      final res = await _api.start(DungeonStartRequestDto(dungeonId: dungeonId));
      return res.toEntity();
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  @override
  Future<DungeonAdvanceResult> advance({
    required String runToken,
    required String battleToken,
    required int currentHp,
    required int currentMp,
  }) async {
    try {
      final res = await _api.advance(DungeonAdvanceRequestDto(
        runToken: runToken,
        battleToken: battleToken,
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
DungeonRepository dungeonRepository(Ref ref) => DungeonRepositoryImpl(
      ref.watch(dungeonApiProvider),
      ref.watch(dungeonLocalDataSourceProvider),
    );
