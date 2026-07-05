// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_battle.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(completeBattle)
final completeBattleProvider = CompleteBattleProvider._();

final class CompleteBattleProvider
    extends $FunctionalProvider<CompleteBattle, CompleteBattle, CompleteBattle>
    with $Provider<CompleteBattle> {
  CompleteBattleProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'completeBattleProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$completeBattleHash();

  @$internal
  @override
  $ProviderElement<CompleteBattle> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CompleteBattle create(Ref ref) {
    return completeBattle(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CompleteBattle value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CompleteBattle>(value),
    );
  }
}

String _$completeBattleHash() => r'f89c96c13fb2e59931a913db574dc98065d40956';
