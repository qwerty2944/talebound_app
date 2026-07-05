// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advance_dungeon.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(advanceDungeon)
final advanceDungeonProvider = AdvanceDungeonProvider._();

final class AdvanceDungeonProvider
    extends $FunctionalProvider<AdvanceDungeon, AdvanceDungeon, AdvanceDungeon>
    with $Provider<AdvanceDungeon> {
  AdvanceDungeonProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'advanceDungeonProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$advanceDungeonHash();

  @$internal
  @override
  $ProviderElement<AdvanceDungeon> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AdvanceDungeon create(Ref ref) {
    return advanceDungeon(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AdvanceDungeon value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AdvanceDungeon>(value),
    );
  }
}

String _$advanceDungeonHash() => r'56a839a4ae0dc7859528a126ec1c1f74e6c44969';
