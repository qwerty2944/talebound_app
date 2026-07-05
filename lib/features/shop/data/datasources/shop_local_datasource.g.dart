// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_local_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(shopLocalDataSource)
final shopLocalDataSourceProvider = ShopLocalDataSourceProvider._();

final class ShopLocalDataSourceProvider
    extends
        $FunctionalProvider<
          ShopLocalDataSource,
          ShopLocalDataSource,
          ShopLocalDataSource
        >
    with $Provider<ShopLocalDataSource> {
  ShopLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'shopLocalDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$shopLocalDataSourceHash();

  @$internal
  @override
  $ProviderElement<ShopLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ShopLocalDataSource create(Ref ref) {
    return shopLocalDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ShopLocalDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ShopLocalDataSource>(value),
    );
  }
}

String _$shopLocalDataSourceHash() =>
    r'0671a596f1f7e7b28cac82c5070acd1dcb23b85b';
