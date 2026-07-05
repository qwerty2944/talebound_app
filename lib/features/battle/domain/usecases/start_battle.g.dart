// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_battle.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(startBattle)
final startBattleProvider = StartBattleProvider._();

final class StartBattleProvider
    extends $FunctionalProvider<StartBattle, StartBattle, StartBattle>
    with $Provider<StartBattle> {
  StartBattleProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'startBattleProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$startBattleHash();

  @$internal
  @override
  $ProviderElement<StartBattle> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  StartBattle create(Ref ref) {
    return startBattle(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(StartBattle value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<StartBattle>(value),
    );
  }
}

String _$startBattleHash() => r'44a6fd258e09ec84fb31f50c896d1e1e2ccad64e';
