// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim_quest.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(claimQuest)
final claimQuestProvider = ClaimQuestProvider._();

final class ClaimQuestProvider
    extends $FunctionalProvider<ClaimQuest, ClaimQuest, ClaimQuest>
    with $Provider<ClaimQuest> {
  ClaimQuestProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'claimQuestProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$claimQuestHash();

  @$internal
  @override
  $ProviderElement<ClaimQuest> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ClaimQuest create(Ref ref) {
    return claimQuest(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ClaimQuest value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ClaimQuest>(value),
    );
  }
}

String _$claimQuestHash() => r'4568f486114b8712dfdcbe2aa3b2e06e449b437e';
