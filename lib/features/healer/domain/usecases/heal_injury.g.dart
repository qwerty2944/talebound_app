// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heal_injury.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(healInjury)
final healInjuryProvider = HealInjuryProvider._();

final class HealInjuryProvider
    extends $FunctionalProvider<HealInjury, HealInjury, HealInjury>
    with $Provider<HealInjury> {
  HealInjuryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'healInjuryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$healInjuryHash();

  @$internal
  @override
  $ProviderElement<HealInjury> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  HealInjury create(Ref ref) {
    return healInjury(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(HealInjury value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<HealInjury>(value),
    );
  }
}

String _$healInjuryHash() => r'0f0640a72fc2fb1b78f613c03e69beab77e75ced';
