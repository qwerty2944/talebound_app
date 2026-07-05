import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/trainer_dto.dart';

part 'trainer_local_datasource.g.dart';

/// 훈련사 목록은 번들 asset(assets/data/trainers.json)에서 읽는다.
class TrainerLocalDataSource {
  const TrainerLocalDataSource();

  Future<List<TrainerDto>> loadTrainers() async {
    final raw = await rootBundle.loadString('assets/data/trainers.json');
    final json = jsonDecode(raw) as Map<String, dynamic>;
    return TrainerListDto.fromJson(json).trainers;
  }
}

@Riverpod(keepAlive: true)
TrainerLocalDataSource trainerLocalDataSource(Ref ref) =>
    const TrainerLocalDataSource();
