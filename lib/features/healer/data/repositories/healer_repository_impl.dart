import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/api_exception.dart';
import '../../domain/entities/heal_outcome.dart';
import '../../domain/entities/healer.dart';
import '../../domain/repositories/healer_repository.dart';
import '../datasources/healer_api.dart';
import '../datasources/healer_local_datasource.dart';
import '../models/heal_request_dto.dart';

part 'healer_repository_impl.g.dart';

class HealerRepositoryImpl implements HealerRepository {
  HealerRepositoryImpl(this._api, this._local);

  final HealerApi _api;
  final HealerLocalDataSource _local;

  @override
  Future<List<Healer>> getHealers() async {
    final healers = await _local.loadHealers();
    return healers.map((h) => h.toEntity()).toList();
  }

  @override
  Future<HealOutcome> heal({
    required String npcId,
    required int injuryIndex,
  }) async {
    try {
      final res = await _api.heal(
        HealRequestDto(npcId: npcId, injuryIndex: injuryIndex),
      );
      return res.data?.toEntity() ??
          const HealOutcome(success: false, remainingGold: 0);
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }
}

@Riverpod(keepAlive: true)
HealerRepository healerRepository(Ref ref) => HealerRepositoryImpl(
      ref.watch(healerApiProvider),
      ref.watch(healerLocalDataSourceProvider),
    );
