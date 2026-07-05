import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/healer.dart';
import '../../domain/usecases/get_healers.dart';

part 'healer_list_controller.g.dart';

@riverpod
Future<List<Healer>> healerList(Ref ref) =>
    ref.watch(getHealersProvider).call();
