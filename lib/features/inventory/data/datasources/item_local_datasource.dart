import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/game_item_dto.dart';

part 'item_local_datasource.g.dart';

/// 아이템 메타는 번들 asset(assets/data/items.json)에서 읽는다.
/// 웹 public/data/items/items.json 을 트리밍해 동봉(id/이름/등급/슬롯/스탯).
class ItemLocalDataSource {
  ItemLocalDataSource();

  Map<String, GameItemDto>? _cache;

  Future<Map<String, GameItemDto>> loadItemMap() async {
    final cached = _cache;
    if (cached != null) return cached;
    final raw = await rootBundle.loadString('assets/data/items.json');
    final json = jsonDecode(raw) as Map<String, dynamic>;
    final file = GameItemFileDto.fromJson(json);
    final map = {for (final it in file.items) it.id: it};
    _cache = map;
    return map;
  }
}

@Riverpod(keepAlive: true)
ItemLocalDataSource itemLocalDataSource(Ref ref) => ItemLocalDataSource();
