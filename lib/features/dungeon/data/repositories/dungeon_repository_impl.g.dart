// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dungeon_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dungeonRepository)
final dungeonRepositoryProvider = DungeonRepositoryProvider._();

final class DungeonRepositoryProvider
    extends
        $FunctionalProvider<
          DungeonRepository,
          DungeonRepository,
          DungeonRepository
        >
    with $Provider<DungeonRepository> {
  DungeonRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dungeonRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dungeonRepositoryHash();

  @$internal
  @override
  $ProviderElement<DungeonRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DungeonRepository create(Ref ref) {
    return dungeonRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DungeonRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DungeonRepository>(value),
    );
  }
}

String _$dungeonRepositoryHash() => r'e4a6af5340a3992d49940ad23e65281a3ab33abf';
