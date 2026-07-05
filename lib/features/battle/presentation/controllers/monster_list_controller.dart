import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/monster.dart';
import '../../domain/usecases/get_monsters.dart';

part 'monster_list_controller.g.dart';

@riverpod
Future<List<Monster>> monsterList(Ref ref) =>
    ref.watch(getMonstersProvider).call();
