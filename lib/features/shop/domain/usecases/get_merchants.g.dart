// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_merchants.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getMerchants)
final getMerchantsProvider = GetMerchantsProvider._();

final class GetMerchantsProvider
    extends $FunctionalProvider<GetMerchants, GetMerchants, GetMerchants>
    with $Provider<GetMerchants> {
  GetMerchantsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getMerchantsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getMerchantsHash();

  @$internal
  @override
  $ProviderElement<GetMerchants> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetMerchants create(Ref ref) {
    return getMerchants(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetMerchants value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetMerchants>(value),
    );
  }
}

String _$getMerchantsHash() => r'af4f507a4b93badedc4c70f4250cb1d70287c817';
