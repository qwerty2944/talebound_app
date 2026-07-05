// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sell_item.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(sellItem)
final sellItemProvider = SellItemProvider._();

final class SellItemProvider
    extends $FunctionalProvider<SellItem, SellItem, SellItem>
    with $Provider<SellItem> {
  SellItemProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sellItemProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sellItemHash();

  @$internal
  @override
  $ProviderElement<SellItem> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SellItem create(Ref ref) {
    return sellItem(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SellItem value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SellItem>(value),
    );
  }
}

String _$sellItemHash() => r'e44dd16ad538018ceae73c8059830379893c2a03';
