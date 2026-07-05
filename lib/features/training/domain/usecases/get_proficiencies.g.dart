// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_proficiencies.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getProficiencies)
final getProficienciesProvider = GetProficienciesProvider._();

final class GetProficienciesProvider
    extends
        $FunctionalProvider<
          GetProficiencies,
          GetProficiencies,
          GetProficiencies
        >
    with $Provider<GetProficiencies> {
  GetProficienciesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getProficienciesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getProficienciesHash();

  @$internal
  @override
  $ProviderElement<GetProficiencies> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetProficiencies create(Ref ref) {
    return getProficiencies(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetProficiencies value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetProficiencies>(value),
    );
  }
}

String _$getProficienciesHash() => r'a0fcf41f94509a675db6c4fad5ea002cc0bfdb95';
