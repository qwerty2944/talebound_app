import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/proficiency.dart';
import '../../domain/usecases/get_proficiencies.dart';

part 'proficiency_list_controller.g.dart';

@riverpod
Future<List<Proficiency>> proficiencyList(Ref ref) =>
    ref.watch(getProficienciesProvider).call();
