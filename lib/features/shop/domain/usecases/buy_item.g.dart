// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buy_item.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(buyItem)
final buyItemProvider = BuyItemProvider._();

final class BuyItemProvider
    extends $FunctionalProvider<BuyItem, BuyItem, BuyItem>
    with $Provider<BuyItem> {
  BuyItemProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'buyItemProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$buyItemHash();

  @$internal
  @override
  $ProviderElement<BuyItem> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  BuyItem create(Ref ref) {
    return buyItem(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BuyItem value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BuyItem>(value),
    );
  }
}

String _$buyItemHash() => r'5baf47b96a9922c2fec39524f9edd2506c8c5ae1';
