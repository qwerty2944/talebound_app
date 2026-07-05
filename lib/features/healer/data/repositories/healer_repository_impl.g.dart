// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'healer_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(healerRepository)
final healerRepositoryProvider = HealerRepositoryProvider._();

final class HealerRepositoryProvider
    extends
        $FunctionalProvider<
          HealerRepository,
          HealerRepository,
          HealerRepository
        >
    with $Provider<HealerRepository> {
  HealerRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'healerRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$healerRepositoryHash();

  @$internal
  @override
  $ProviderElement<HealerRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  HealerRepository create(Ref ref) {
    return healerRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HealerRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HealerRepository>(value),
    );
  }
}

String _$healerRepositoryHash() => r'cb66bbc8b858ae096d6f6e5994a211eaa8dc5ea5';
