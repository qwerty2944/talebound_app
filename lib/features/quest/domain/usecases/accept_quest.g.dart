// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accept_quest.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(acceptQuest)
final acceptQuestProvider = AcceptQuestProvider._();

final class AcceptQuestProvider
    extends $FunctionalProvider<AcceptQuest, AcceptQuest, AcceptQuest>
    with $Provider<AcceptQuest> {
  AcceptQuestProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'acceptQuestProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$acceptQuestHash();

  @$internal
  @override
  $ProviderElement<AcceptQuest> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AcceptQuest create(Ref ref) {
    return acceptQuest(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AcceptQuest value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AcceptQuest>(value),
    );
  }
}

String _$acceptQuestHash() => r'e497e4238570f56675f8cb140423261d625267e7';
