// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainer_local_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(trainerLocalDataSource)
final trainerLocalDataSourceProvider = TrainerLocalDataSourceProvider._();

final class TrainerLocalDataSourceProvider
    extends
        $FunctionalProvider<
          TrainerLocalDataSource,
          TrainerLocalDataSource,
          TrainerLocalDataSource
        >
    with $Provider<TrainerLocalDataSource> {
  TrainerLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'trainerLocalDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$trainerLocalDataSourceHash();

  @$internal
  @override
  $ProviderElement<TrainerLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  TrainerLocalDataSource create(Ref ref) {
    return trainerLocalDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TrainerLocalDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TrainerLocalDataSource>(value),
    );
  }
}

String _$trainerLocalDataSourceHash() =>
    r'8afa0e1f64fc13110a944c245b31ebe36d76d1f8';
