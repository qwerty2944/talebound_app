// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant_list_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(merchantList)
final merchantListProvider = MerchantListProvider._();

final class MerchantListProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Merchant>>,
          List<Merchant>,
          FutureOr<List<Merchant>>
        >
    with $FutureModifier<List<Merchant>>, $FutureProvider<List<Merchant>> {
  MerchantListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'merchantListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$merchantListHash();

  @$internal
  @override
  $FutureProviderElement<List<Merchant>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Merchant>> create(Ref ref) {
    return merchantList(ref);
  }
}

String _$merchantListHash() => r'9768bf4b826b9d42ce1599112aac2eb0b53b7648';
