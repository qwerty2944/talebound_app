// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_dungeons.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getDungeons)
final getDungeonsProvider = GetDungeonsProvider._();

final class GetDungeonsProvider
    extends $FunctionalProvider<GetDungeons, GetDungeons, GetDungeons>
    with $Provider<GetDungeons> {
  GetDungeonsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getDungeonsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getDungeonsHash();

  @$internal
  @override
  $ProviderElement<GetDungeons> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetDungeons create(Ref ref) {
    return getDungeons(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetDungeons value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetDungeons>(value),
    );
  }
}

String _$getDungeonsHash() => r'18cb40fcf5467dbcfe0a9aa41a5d80dd7b91b4f3';
