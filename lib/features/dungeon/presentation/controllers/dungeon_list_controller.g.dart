// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dungeon_list_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dungeonList)
final dungeonListProvider = DungeonListProvider._();

final class DungeonListProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Dungeon>>,
          List<Dungeon>,
          FutureOr<List<Dungeon>>
        >
    with $FutureModifier<List<Dungeon>>, $FutureProvider<List<Dungeon>> {
  DungeonListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dungeonListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dungeonListHash();

  @$internal
  @override
  $FutureProviderElement<List<Dungeon>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Dungeon>> create(Ref ref) {
    return dungeonList(ref);
  }
}

String _$dungeonListHash() => r'ca94fc57417f3bced77606afa2d65f53f6d5b9e6';

/// 던전 웨이브 몬스터 스탯 해석용 카탈로그(id → Monster).
/// 서버는 웨이브마다 monster{id,level}만 내려주므로 스탯은 번들 데이터에서 찾는다.

@ProviderFor(monsterCatalog)
final monsterCatalogProvider = MonsterCatalogProvider._();

/// 던전 웨이브 몬스터 스탯 해석용 카탈로그(id → Monster).
/// 서버는 웨이브마다 monster{id,level}만 내려주므로 스탯은 번들 데이터에서 찾는다.

final class MonsterCatalogProvider
    extends
        $FunctionalProvider<
          AsyncValue<Map<String, Monster>>,
          Map<String, Monster>,
          FutureOr<Map<String, Monster>>
        >
    with
        $FutureModifier<Map<String, Monster>>,
        $FutureProvider<Map<String, Monster>> {
  /// 던전 웨이브 몬스터 스탯 해석용 카탈로그(id → Monster).
  /// 서버는 웨이브마다 monster{id,level}만 내려주므로 스탯은 번들 데이터에서 찾는다.
  MonsterCatalogProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'monsterCatalogProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$monsterCatalogHash();

  @$internal
  @override
  $FutureProviderElement<Map<String, Monster>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<Map<String, Monster>> create(Ref ref) {
    return monsterCatalog(ref);
  }
}

String _$monsterCatalogHash() => r'2cfa74db49122d1cdcad30b233d2d9e92a600e0a';
