// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchant_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MerchantListDto _$MerchantListDtoFromJson(Map<String, dynamic> json) =>
    _MerchantListDto(
      merchants:
          (json['merchants'] as List<dynamic>?)
              ?.map((e) => MerchantDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MerchantDto>[],
    );

Map<String, dynamic> _$MerchantListDtoToJson(_MerchantListDto instance) =>
    <String, dynamic>{
      'merchants': instance.merchants.map((e) => e.toJson()).toList(),
    };

_MerchantDto _$MerchantDtoFromJson(Map<String, dynamic> json) => _MerchantDto(
  id: json['id'] as String,
  nameKo: json['nameKo'] as String? ?? '상인',
  icon: json['icon'] as String? ?? '🛒',
  mapId: json['mapId'] as String? ?? '',
  description: json['description'] as String? ?? '',
  stock:
      (json['stock'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  dialogues: json['dialogues'] == null
      ? const MerchantDialoguesDto()
      : MerchantDialoguesDto.fromJson(
          json['dialogues'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$MerchantDtoToJson(_MerchantDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nameKo': instance.nameKo,
      'icon': instance.icon,
      'mapId': instance.mapId,
      'description': instance.description,
      'stock': instance.stock,
      'dialogues': instance.dialogues.toJson(),
    };

_MerchantDialoguesDto _$MerchantDialoguesDtoFromJson(
  Map<String, dynamic> json,
) => _MerchantDialoguesDto(
  greeting: json['greeting'] as String? ?? '어서 오세요!',
  browse: json['browse'] as String? ?? '천천히 둘러보세요.',
  purchase: json['purchase'] as String? ?? '좋은 선택이십니다!',
  notEnoughGold: json['notEnoughGold'] as String? ?? '금화가 부족하시네요...',
  farewell: json['farewell'] as String? ?? '또 오세요!',
);

Map<String, dynamic> _$MerchantDialoguesDtoToJson(
  _MerchantDialoguesDto instance,
) => <String, dynamic>{
  'greeting': instance.greeting,
  'browse': instance.browse,
  'purchase': instance.purchase,
  'notEnoughGold': instance.notEnoughGold,
  'farewell': instance.farewell,
};
