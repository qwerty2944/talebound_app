// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monster_list_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(monsterList)
final monsterListProvider = MonsterListProvider._();

final class MonsterListProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Monster>>,
          List<Monster>,
          FutureOr<List<Monster>>
        >
    with $FutureModifier<List<Monster>>, $FutureProvider<List<Monster>> {
  MonsterListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'monsterListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$monsterListHash();

  @$internal
  @override
  $FutureProviderElement<List<Monster>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Monster>> create(Ref ref) {
    return monsterList(ref);
  }
}

String _$monsterListHash() => r'a18d257a8343c0973edacf5e399db922c1b7e63e';
