// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dungeon_local_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dungeonLocalDataSource)
final dungeonLocalDataSourceProvider = DungeonLocalDataSourceProvider._();

final class DungeonLocalDataSourceProvider
    extends
        $FunctionalProvider<
          DungeonLocalDataSource,
          DungeonLocalDataSource,
          DungeonLocalDataSource
        >
    with $Provider<DungeonLocalDataSource> {
  DungeonLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dungeonLocalDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dungeonLocalDataSourceHash();

  @$internal
  @override
  $ProviderElement<DungeonLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DungeonLocalDataSource create(Ref ref) {
    return dungeonLocalDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DungeonLocalDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DungeonLocalDataSource>(value),
    );
  }
}

String _$dungeonLocalDataSourceHash() =>
    r'e662afc3ab80196f07c197d5d6956d07c97ea5f2';
