// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_healers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getHealers)
final getHealersProvider = GetHealersProvider._();

final class GetHealersProvider
    extends $FunctionalProvider<GetHealers, GetHealers, GetHealers>
    with $Provider<GetHealers> {
  GetHealersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getHealersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getHealersHash();

  @$internal
  @override
  $ProviderElement<GetHealers> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetHealers create(Ref ref) {
    return getHealers(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetHealers value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetHealers>(value),
    );
  }
}

String _$getHealersHash() => r'8fce80fa6f2607aad0cbae4e70891974f05b93b0';
