// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'healer_list_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(healerList)
final healerListProvider = HealerListProvider._();

final class HealerListProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Healer>>,
          List<Healer>,
          FutureOr<List<Healer>>
        >
    with $FutureModifier<List<Healer>>, $FutureProvider<List<Healer>> {
  HealerListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'healerListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$healerListHash();

  @$internal
  @override
  $FutureProviderElement<List<Healer>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Healer>> create(Ref ref) {
    return healerList(ref);
  }
}

String _$healerListHash() => r'5ee899c50b74cc036b79a6e7f8dcc0d3c3aca528';
