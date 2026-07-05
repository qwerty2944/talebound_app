// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quest_list_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 퀘스트 목록 상태 + 수락/수령 액션.
/// 액션 후 목록을 다시 불러와 상태/진행도를 최신화한다.

@ProviderFor(QuestListController)
final questListControllerProvider = QuestListControllerProvider._();

/// 퀘스트 목록 상태 + 수락/수령 액션.
/// 액션 후 목록을 다시 불러와 상태/진행도를 최신화한다.
final class QuestListControllerProvider
    extends $AsyncNotifierProvider<QuestListController, List<Quest>> {
  /// 퀘스트 목록 상태 + 수락/수령 액션.
  /// 액션 후 목록을 다시 불러와 상태/진행도를 최신화한다.
  QuestListControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'questListControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$questListControllerHash();

  @$internal
  @override
  QuestListController create() => QuestListController();
}

String _$questListControllerHash() =>
    r'00ff3fd87ee6c770dec930cf9826f8b63064c349';

/// 퀘스트 목록 상태 + 수락/수령 액션.
/// 액션 후 목록을 다시 불러와 상태/진행도를 최신화한다.

abstract class _$QuestListController extends $AsyncNotifier<List<Quest>> {
  FutureOr<List<Quest>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Quest>>, List<Quest>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Quest>>, List<Quest>>,
              AsyncValue<List<Quest>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
