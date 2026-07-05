// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monster_local_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(monsterLocalDataSource)
final monsterLocalDataSourceProvider = MonsterLocalDataSourceProvider._();

final class MonsterLocalDataSourceProvider
    extends
        $FunctionalProvider<
          MonsterLocalDataSource,
          MonsterLocalDataSource,
          MonsterLocalDataSource
        >
    with $Provider<MonsterLocalDataSource> {
  MonsterLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'monsterLocalDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$monsterLocalDataSourceHash();

  @$internal
  @override
  $ProviderElement<MonsterLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  MonsterLocalDataSource create(Ref ref) {
    return monsterLocalDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MonsterLocalDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MonsterLocalDataSource>(value),
    );
  }
}

String _$monsterLocalDataSourceHash() =>
    r'96665af7c257fd0ad8aada5528c7e03b0636493a';
