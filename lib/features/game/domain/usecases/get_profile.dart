import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/profile_repository_impl.dart';
import '../entities/character.dart';
import '../repositories/profile_repository.dart';

part 'get_profile.g.dart';

class GetProfile {
  const GetProfile(this._repository);

  final ProfileRepository _repository;

  Future<Character?> call() => _repository.getProfile();
}

@riverpod
GetProfile getProfile(Ref ref) => GetProfile(ref.watch(profileRepositoryProvider));
