// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'train_proficiency.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(trainProficiency)
final trainProficiencyProvider = TrainProficiencyProvider._();

final class TrainProficiencyProvider
    extends
        $FunctionalProvider<
          TrainProficiency,
          TrainProficiency,
          TrainProficiency
        >
    with $Provider<TrainProficiency> {
  TrainProficiencyProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'trainProficiencyProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$trainProficiencyHash();

  @$internal
  @override
  $ProviderElement<TrainProficiency> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  TrainProficiency create(Ref ref) {
    return trainProficiency(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(TrainProficiency value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<TrainProficiency>(value),
    );
  }
}

String _$trainProficiencyHash() => r'b9f71bce1509adc553205165461ad7041f3168bd';
