// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_trainers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getTrainers)
final getTrainersProvider = GetTrainersProvider._();

final class GetTrainersProvider
    extends $FunctionalProvider<GetTrainers, GetTrainers, GetTrainers>
    with $Provider<GetTrainers> {
  GetTrainersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getTrainersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getTrainersHash();

  @$internal
  @override
  $ProviderElement<GetTrainers> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetTrainers create(Ref ref) {
    return getTrainers(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetTrainers value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetTrainers>(value),
    );
  }
}

String _$getTrainersHash() => r'5403be712096403d973c40d6527e078d919ac117';
