// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_quests.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getQuests)
final getQuestsProvider = GetQuestsProvider._();

final class GetQuestsProvider
    extends $FunctionalProvider<GetQuests, GetQuests, GetQuests>
    with $Provider<GetQuests> {
  GetQuestsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getQuestsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getQuestsHash();

  @$internal
  @override
  $ProviderElement<GetQuests> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetQuests create(Ref ref) {
    return getQuests(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetQuests value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetQuests>(value),
    );
  }
}

String _$getQuestsHash() => r'322db650832acb3f3ad5a46bf7f2111f8e89073c';
