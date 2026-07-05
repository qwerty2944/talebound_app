// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proficiency_list_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(proficiencyList)
final proficiencyListProvider = ProficiencyListProvider._();

final class ProficiencyListProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Proficiency>>,
          List<Proficiency>,
          FutureOr<List<Proficiency>>
        >
    with
        $FutureModifier<List<Proficiency>>,
        $FutureProvider<List<Proficiency>> {
  ProficiencyListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'proficiencyListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$proficiencyListHash();

  @$internal
  @override
  $FutureProviderElement<List<Proficiency>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Proficiency>> create(Ref ref) {
    return proficiencyList(ref);
  }
}

String _$proficiencyListHash() => r'202f0cea340854d5b63f2b11ce4d4898802bad55';
