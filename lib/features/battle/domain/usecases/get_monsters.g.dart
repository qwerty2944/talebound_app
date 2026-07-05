// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_monsters.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getMonsters)
final getMonstersProvider = GetMonstersProvider._();

final class GetMonstersProvider
    extends $FunctionalProvider<GetMonsters, GetMonsters, GetMonsters>
    with $Provider<GetMonsters> {
  GetMonstersProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getMonstersProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getMonstersHash();

  @$internal
  @override
  $ProviderElement<GetMonsters> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetMonsters create(Ref ref) {
    return getMonsters(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetMonsters value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetMonsters>(value),
    );
  }
}

String _$getMonstersHash() => r'11cf09b62552b5d1ac307fc7264538104e73dcb2';
