// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'healer_local_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(healerLocalDataSource)
final healerLocalDataSourceProvider = HealerLocalDataSourceProvider._();

final class HealerLocalDataSourceProvider
    extends
        $FunctionalProvider<
          HealerLocalDataSource,
          HealerLocalDataSource,
          HealerLocalDataSource
        >
    with $Provider<HealerLocalDataSource> {
  HealerLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'healerLocalDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$healerLocalDataSourceHash();

  @$internal
  @override
  $ProviderElement<HealerLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  HealerLocalDataSource create(Ref ref) {
    return healerLocalDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HealerLocalDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HealerLocalDataSource>(value),
    );
  }
}

String _$healerLocalDataSourceHash() =>
    r'262266f5403cd14dc6f986b3ca515f0c76540ec9';
