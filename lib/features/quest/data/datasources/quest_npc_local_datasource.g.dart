// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quest_npc_local_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(questNpcLocalDataSource)
final questNpcLocalDataSourceProvider = QuestNpcLocalDataSourceProvider._();

final class QuestNpcLocalDataSourceProvider
    extends
        $FunctionalProvider<
          QuestNpcLocalDataSource,
          QuestNpcLocalDataSource,
          QuestNpcLocalDataSource
        >
    with $Provider<QuestNpcLocalDataSource> {
  QuestNpcLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'questNpcLocalDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$questNpcLocalDataSourceHash();

  @$internal
  @override
  $ProviderElement<QuestNpcLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  QuestNpcLocalDataSource create(Ref ref) {
    return questNpcLocalDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(QuestNpcLocalDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<QuestNpcLocalDataSource>(value),
    );
  }
}

String _$questNpcLocalDataSourceHash() =>
    r'e7843c06b12fc39253ec81835a0860300bdb3da5';

@ProviderFor(questNpcs)
final questNpcsProvider = QuestNpcsProvider._();

final class QuestNpcsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<QuestNpc>>,
          List<QuestNpc>,
          FutureOr<List<QuestNpc>>
        >
    with $FutureModifier<List<QuestNpc>>, $FutureProvider<List<QuestNpc>> {
  QuestNpcsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'questNpcsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$questNpcsHash();

  @$internal
  @override
  $FutureProviderElement<List<QuestNpc>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<QuestNpc>> create(Ref ref) {
    return questNpcs(ref);
  }
}

String _$questNpcsHash() => r'd6cad67b494ba965f5e50859ce6ea70d1f735485';
