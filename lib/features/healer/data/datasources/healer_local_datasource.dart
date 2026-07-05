import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/healer_dto.dart';

part 'healer_local_datasource.g.dart';

/// 치료사 카탈로그는 번들 asset에서 읽는다(백엔드에 목록 REST가 없음).
/// 치료비는 표시용이며, 실제 결제/판정은 서버가 healers.json 가격표로 수행한다.
class HealerLocalDataSource {
  const HealerLocalDataSource();

  Future<List<HealerDto>> loadHealers() async {
    final raw = await rootBundle.loadString('assets/data/healers.json');
    final json = jsonDecode(raw) as Map<String, dynamic>;
    return HealerCatalogDto.fromJson(json).npcs;
  }
}

@Riverpod(keepAlive: true)
HealerLocalDataSource healerLocalDataSource(Ref ref) =>
    const HealerLocalDataSource();
