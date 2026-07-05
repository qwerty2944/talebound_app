// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_dungeon.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(startDungeon)
final startDungeonProvider = StartDungeonProvider._();

final class StartDungeonProvider
    extends $FunctionalProvider<StartDungeon, StartDungeon, StartDungeon>
    with $Provider<StartDungeon> {
  StartDungeonProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'startDungeonProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$startDungeonHash();

  @$internal
  @override
  $ProviderElement<StartDungeon> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  StartDungeon create(Ref ref) {
    return startDungeon(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(StartDungeon value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<StartDungeon>(value),
    );
  }
}

String _$startDungeonHash() => r'5240a866f9f38760cc727171a37264f2c4eb6fdd';
