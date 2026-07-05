// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_local_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(itemLocalDataSource)
final itemLocalDataSourceProvider = ItemLocalDataSourceProvider._();

final class ItemLocalDataSourceProvider
    extends
        $FunctionalProvider<
          ItemLocalDataSource,
          ItemLocalDataSource,
          ItemLocalDataSource
        >
    with $Provider<ItemLocalDataSource> {
  ItemLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'itemLocalDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$itemLocalDataSourceHash();

  @$internal
  @override
  $ProviderElement<ItemLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ItemLocalDataSource create(Ref ref) {
    return itemLocalDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ItemLocalDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ItemLocalDataSource>(value),
    );
  }
}

String _$itemLocalDataSourceHash() =>
    r'7a227143102202188e16f31da0c590264c37fbd6';
