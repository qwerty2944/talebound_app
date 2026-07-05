// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainer_list_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(trainerList)
final trainerListProvider = TrainerListProvider._();

final class TrainerListProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Trainer>>,
          List<Trainer>,
          FutureOr<List<Trainer>>
        >
    with $FutureModifier<List<Trainer>>, $FutureProvider<List<Trainer>> {
  TrainerListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'trainerListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$trainerListHash();

  @$internal
  @override
  $FutureProviderElement<List<Trainer>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Trainer>> create(Ref ref) {
    return trainerList(ref);
  }
}

String _$trainerListHash() => r'b1ff13ebcc26414a69aeb5a4dd571e317c2a1bfb';
