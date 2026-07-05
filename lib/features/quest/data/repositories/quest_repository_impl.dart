import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/api_exception.dart';
import '../../domain/entities/quest.dart';
import '../../domain/repositories/quest_repository.dart';
import '../datasources/quest_api.dart';
import '../models/quest_dto.dart';

part 'quest_repository_impl.g.dart';

class QuestRepositoryImpl implements QuestRepository {
  QuestRepositoryImpl(this._api);

  final QuestApi _api;

  @override
  Future<List<Quest>> getQuests() async {
    try {
      final dtos = await _api.list();
      return dtos.map((d) => d.toEntity()).toList();
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  @override
  Future<void> accept(String questId) async {
    try {
      await _api.accept(QuestActionRequestDto(questId: questId));
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }

  @override
  Future<QuestClaimResult> claim(String questId) async {
    try {
      final res = await _api.claim(QuestActionRequestDto(questId: questId));
      return res.toEntity();
    } on DioException catch (e) {
      throw ApiException.fromDioException(e);
    }
  }
}

@Riverpod(keepAlive: true)
QuestRepository questRepository(Ref ref) =>
    QuestRepositoryImpl(ref.watch(questApiProvider));
