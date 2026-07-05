import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/quest_npc.dart';
import '../models/quest_npc_dto.dart';

part 'quest_npc_local_datasource.g.dart';

/// 퀘스트 NPC(장로/여관주인/경비대장) 대사는 번들 asset에서 읽는다.
class QuestNpcLocalDataSource {
  const QuestNpcLocalDataSource();

  Future<List<QuestNpc>> loadQuestNpcs() async {
    final raw = await rootBundle.loadString('assets/data/quest_npcs.json');
    final json = jsonDecode(raw) as Map<String, dynamic>;
    return QuestNpcCatalogDto.fromJson(json).npcs.map((n) => n.toEntity()).toList();
  }
}

@Riverpod(keepAlive: true)
QuestNpcLocalDataSource questNpcLocalDataSource(Ref ref) =>
    const QuestNpcLocalDataSource();

@riverpod
Future<List<QuestNpc>> questNpcs(Ref ref) =>
    ref.watch(questNpcLocalDataSourceProvider).loadQuestNpcs();
