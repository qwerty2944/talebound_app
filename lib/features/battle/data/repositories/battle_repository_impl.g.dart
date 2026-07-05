// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battle_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(battleRepository)
final battleRepositoryProvider = BattleRepositoryProvider._();

final class BattleRepositoryProvider
    extends
        $FunctionalProvider<
          BattleRepository,
          BattleRepository,
          BattleRepository
        >
    with $Provider<BattleRepository> {
  BattleRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'battleRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$battleRepositoryHash();

  @$internal
  @override
  $ProviderElement<BattleRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  BattleRepository create(Ref ref) {
    return battleRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BattleRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BattleRepository>(value),
    );
  }
}

String _$battleRepositoryHash() => r'73a566d7886f3d93b20ac1f661813edee0df664d';
