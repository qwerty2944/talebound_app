// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quest_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(questRepository)
final questRepositoryProvider = QuestRepositoryProvider._();

final class QuestRepositoryProvider
    extends
        $FunctionalProvider<QuestRepository, QuestRepository, QuestRepository>
    with $Provider<QuestRepository> {
  QuestRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'questRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$questRepositoryHash();

  @$internal
  @override
  $ProviderElement<QuestRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  QuestRepository create(Ref ref) {
    return questRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(QuestRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<QuestRepository>(value),
    );
  }
}

String _$questRepositoryHash() => r'367387be1060635e0cd5b3a0901cce7006b9da21';
