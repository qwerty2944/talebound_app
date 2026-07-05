import 'package:freezed_annotation/freezed_annotation.dart';

part 'merchant_dto.freezed.dart';
part 'merchant_dto.g.dart';

@freezed
abstract class MerchantListDto with _$MerchantListDto {
  const factory MerchantListDto({
    @Default(<MerchantDto>[]) List<MerchantDto> merchants,
  }) = _MerchantListDto;

  factory MerchantListDto.fromJson(Map<String, dynamic> json) =>
      _$MerchantListDtoFromJson(json);
}

@freezed
abstract class MerchantDto with _$MerchantDto {
  const factory MerchantDto({
    required String id,
    @Default('상인') String nameKo,
    @Default('🛒') String icon,
    @Default('') String mapId,
    @Default('') String description,
    @Default(<String>[]) List<String> stock,
    @Default(MerchantDialoguesDto()) MerchantDialoguesDto dialogues,
  }) = _MerchantDto;

  factory MerchantDto.fromJson(Map<String, dynamic> json) =>
      _$MerchantDtoFromJson(json);
}

@freezed
abstract class MerchantDialoguesDto with _$MerchantDialoguesDto {
  const factory MerchantDialoguesDto({
    @Default('어서 오세요!') String greeting,
    @Default('천천히 둘러보세요.') String browse,
    @Default('좋은 선택이십니다!') String purchase,
    @Default('금화가 부족하시네요...') String notEnoughGold,
    @Default('또 오세요!') String farewell,
  }) = _MerchantDialoguesDto;

  factory MerchantDialoguesDto.fromJson(Map<String, dynamic> json) =>
      _$MerchantDialoguesDtoFromJson(json);
}
