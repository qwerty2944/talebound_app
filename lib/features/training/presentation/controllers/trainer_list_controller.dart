import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/trainer.dart';
import '../../domain/usecases/get_trainers.dart';

part 'trainer_list_controller.g.dart';

@riverpod
Future<List<Trainer>> trainerList(Ref ref) =>
    ref.watch(getTrainersProvider).call();
