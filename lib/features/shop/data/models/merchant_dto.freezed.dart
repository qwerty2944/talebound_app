// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchant_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MerchantListDto {

 List<MerchantDto> get merchants;
/// Create a copy of MerchantListDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MerchantListDtoCopyWith<MerchantListDto> get copyWith => _$MerchantListDtoCopyWithImpl<MerchantListDto>(this as MerchantListDto, _$identity);

  /// Serializes this MerchantListDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MerchantListDto&&const DeepCollectionEquality().equals(other.merchants, merchants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(merchants));

@override
String toString() {
  return 'MerchantListDto(merchants: $merchants)';
}


}

/// @nodoc
abstract mixin class $MerchantListDtoCopyWith<$Res>  {
  factory $MerchantListDtoCopyWith(MerchantListDto value, $Res Function(MerchantListDto) _then) = _$MerchantListDtoCopyWithImpl;
@useResult
$Res call({
 List<MerchantDto> merchants
});




}
/// @nodoc
class _$MerchantListDtoCopyWithImpl<$Res>
    implements $MerchantListDtoCopyWith<$Res> {
  _$MerchantListDtoCopyWithImpl(this._self, this._then);

  final MerchantListDto _self;
  final $Res Function(MerchantListDto) _then;

/// Create a copy of MerchantListDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? merchants = null,}) {
  return _then(_self.copyWith(
merchants: null == merchants ? _self.merchants : merchants // ignore: cast_nullable_to_non_nullable
as List<MerchantDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [MerchantListDto].
extension MerchantListDtoPatterns on MerchantListDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MerchantListDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MerchantListDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MerchantListDto value)  $default,){
final _that = this;
switch (_that) {
case _MerchantListDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MerchantListDto value)?  $default,){
final _that = this;
switch (_that) {
case _MerchantListDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MerchantDto> merchants)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MerchantListDto() when $default != null:
return $default(_that.merchants);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MerchantDto> merchants)  $default,) {final _that = this;
switch (_that) {
case _MerchantListDto():
return $default(_that.merchants);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MerchantDto> merchants)?  $default,) {final _that = this;
switch (_that) {
case _MerchantListDto() when $default != null:
return $default(_that.merchants);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MerchantListDto implements MerchantListDto {
  const _MerchantListDto({final  List<MerchantDto> merchants = const <MerchantDto>[]}): _merchants = merchants;
  factory _MerchantListDto.fromJson(Map<String, dynamic> json) => _$MerchantListDtoFromJson(json);

 final  List<MerchantDto> _merchants;
@override@JsonKey() List<MerchantDto> get merchants {
  if (_merchants is EqualUnmodifiableListView) return _merchants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_merchants);
}


/// Create a copy of MerchantListDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MerchantListDtoCopyWith<_MerchantListDto> get copyWith => __$MerchantListDtoCopyWithImpl<_MerchantListDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MerchantListDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MerchantListDto&&const DeepCollectionEquality().equals(other._merchants, _merchants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_merchants));

@override
String toString() {
  return 'MerchantListDto(merchants: $merchants)';
}


}

/// @nodoc
abstract mixin class _$MerchantListDtoCopyWith<$Res> implements $MerchantListDtoCopyWith<$Res> {
  factory _$MerchantListDtoCopyWith(_MerchantListDto value, $Res Function(_MerchantListDto) _then) = __$MerchantListDtoCopyWithImpl;
@override @useResult
$Res call({
 List<MerchantDto> merchants
});




}
/// @nodoc
class __$MerchantListDtoCopyWithImpl<$Res>
    implements _$MerchantListDtoCopyWith<$Res> {
  __$MerchantListDtoCopyWithImpl(this._self, this._then);

  final _MerchantListDto _self;
  final $Res Function(_MerchantListDto) _then;

/// Create a copy of MerchantListDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? merchants = null,}) {
  return _then(_MerchantListDto(
merchants: null == merchants ? _self._merchants : merchants // ignore: cast_nullable_to_non_nullable
as List<MerchantDto>,
  ));
}


}


/// @nodoc
mixin _$MerchantDto {

 String get id; String get nameKo; String get icon; String get mapId; String get description; List<String> get stock; MerchantDialoguesDto get dialogues;
/// Create a copy of MerchantDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MerchantDtoCopyWith<MerchantDto> get copyWith => _$MerchantDtoCopyWithImpl<MerchantDto>(this as MerchantDto, _$identity);

  /// Serializes this MerchantDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MerchantDto&&(identical(other.id, id) || other.id == id)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.mapId, mapId) || other.mapId == mapId)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.stock, stock)&&(identical(other.dialogues, dialogues) || other.dialogues == dialogues));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameKo,icon,mapId,description,const DeepCollectionEquality().hash(stock),dialogues);

@override
String toString() {
  return 'MerchantDto(id: $id, nameKo: $nameKo, icon: $icon, mapId: $mapId, description: $description, stock: $stock, dialogues: $dialogues)';
}


}

/// @nodoc
abstract mixin class $MerchantDtoCopyWith<$Res>  {
  factory $MerchantDtoCopyWith(MerchantDto value, $Res Function(MerchantDto) _then) = _$MerchantDtoCopyWithImpl;
@useResult
$Res call({
 String id, String nameKo, String icon, String mapId, String description, List<String> stock, MerchantDialoguesDto dialogues
});


$MerchantDialoguesDtoCopyWith<$Res> get dialogues;

}
/// @nodoc
class _$MerchantDtoCopyWithImpl<$Res>
    implements $MerchantDtoCopyWith<$Res> {
  _$MerchantDtoCopyWithImpl(this._self, this._then);

  final MerchantDto _self;
  final $Res Function(MerchantDto) _then;

/// Create a copy of MerchantDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nameKo = null,Object? icon = null,Object? mapId = null,Object? description = null,Object? stock = null,Object? dialogues = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,mapId: null == mapId ? _self.mapId : mapId // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as List<String>,dialogues: null == dialogues ? _self.dialogues : dialogues // ignore: cast_nullable_to_non_nullable
as MerchantDialoguesDto,
  ));
}
/// Create a copy of MerchantDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MerchantDialoguesDtoCopyWith<$Res> get dialogues {
  
  return $MerchantDialoguesDtoCopyWith<$Res>(_self.dialogues, (value) {
    return _then(_self.copyWith(dialogues: value));
  });
}
}


/// Adds pattern-matching-related methods to [MerchantDto].
extension MerchantDtoPatterns on MerchantDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MerchantDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MerchantDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MerchantDto value)  $default,){
final _that = this;
switch (_that) {
case _MerchantDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MerchantDto value)?  $default,){
final _that = this;
switch (_that) {
case _MerchantDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String nameKo,  String icon,  String mapId,  String description,  List<String> stock,  MerchantDialoguesDto dialogues)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MerchantDto() when $default != null:
return $default(_that.id,_that.nameKo,_that.icon,_that.mapId,_that.description,_that.stock,_that.dialogues);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String nameKo,  String icon,  String mapId,  String description,  List<String> stock,  MerchantDialoguesDto dialogues)  $default,) {final _that = this;
switch (_that) {
case _MerchantDto():
return $default(_that.id,_that.nameKo,_that.icon,_that.mapId,_that.description,_that.stock,_that.dialogues);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String nameKo,  String icon,  String mapId,  String description,  List<String> stock,  MerchantDialoguesDto dialogues)?  $default,) {final _that = this;
switch (_that) {
case _MerchantDto() when $default != null:
return $default(_that.id,_that.nameKo,_that.icon,_that.mapId,_that.description,_that.stock,_that.dialogues);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MerchantDto implements MerchantDto {
  const _MerchantDto({required this.id, this.nameKo = '상인', this.icon = '🛒', this.mapId = '', this.description = '', final  List<String> stock = const <String>[], this.dialogues = const MerchantDialoguesDto()}): _stock = stock;
  factory _MerchantDto.fromJson(Map<String, dynamic> json) => _$MerchantDtoFromJson(json);

@override final  String id;
@override@JsonKey() final  String nameKo;
@override@JsonKey() final  String icon;
@override@JsonKey() final  String mapId;
@override@JsonKey() final  String description;
 final  List<String> _stock;
@override@JsonKey() List<String> get stock {
  if (_stock is EqualUnmodifiableListView) return _stock;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stock);
}

@override@JsonKey() final  MerchantDialoguesDto dialogues;

/// Create a copy of MerchantDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MerchantDtoCopyWith<_MerchantDto> get copyWith => __$MerchantDtoCopyWithImpl<_MerchantDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MerchantDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MerchantDto&&(identical(other.id, id) || other.id == id)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.mapId, mapId) || other.mapId == mapId)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._stock, _stock)&&(identical(other.dialogues, dialogues) || other.dialogues == dialogues));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameKo,icon,mapId,description,const DeepCollectionEquality().hash(_stock),dialogues);

@override
String toString() {
  return 'MerchantDto(id: $id, nameKo: $nameKo, icon: $icon, mapId: $mapId, description: $description, stock: $stock, dialogues: $dialogues)';
}


}

/// @nodoc
abstract mixin class _$MerchantDtoCopyWith<$Res> implements $MerchantDtoCopyWith<$Res> {
  factory _$MerchantDtoCopyWith(_MerchantDto value, $Res Function(_MerchantDto) _then) = __$MerchantDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String nameKo, String icon, String mapId, String description, List<String> stock, MerchantDialoguesDto dialogues
});


@override $MerchantDialoguesDtoCopyWith<$Res> get dialogues;

}
/// @nodoc
class __$MerchantDtoCopyWithImpl<$Res>
    implements _$MerchantDtoCopyWith<$Res> {
  __$MerchantDtoCopyWithImpl(this._self, this._then);

  final _MerchantDto _self;
  final $Res Function(_MerchantDto) _then;

/// Create a copy of MerchantDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nameKo = null,Object? icon = null,Object? mapId = null,Object? description = null,Object? stock = null,Object? dialogues = null,}) {
  return _then(_MerchantDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,mapId: null == mapId ? _self.mapId : mapId // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,stock: null == stock ? _self._stock : stock // ignore: cast_nullable_to_non_nullable
as List<String>,dialogues: null == dialogues ? _self.dialogues : dialogues // ignore: cast_nullable_to_non_nullable
as MerchantDialoguesDto,
  ));
}

/// Create a copy of MerchantDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MerchantDialoguesDtoCopyWith<$Res> get dialogues {
  
  return $MerchantDialoguesDtoCopyWith<$Res>(_self.dialogues, (value) {
    return _then(_self.copyWith(dialogues: value));
  });
}
}


/// @nodoc
mixin _$MerchantDialoguesDto {

 String get greeting; String get browse; String get purchase; String get notEnoughGold; String get farewell;
/// Create a copy of MerchantDialoguesDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MerchantDialoguesDtoCopyWith<MerchantDialoguesDto> get copyWith => _$MerchantDialoguesDtoCopyWithImpl<MerchantDialoguesDto>(this as MerchantDialoguesDto, _$identity);

  /// Serializes this MerchantDialoguesDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MerchantDialoguesDto&&(identical(other.greeting, greeting) || other.greeting == greeting)&&(identical(other.browse, browse) || other.browse == browse)&&(identical(other.purchase, purchase) || other.purchase == purchase)&&(identical(other.notEnoughGold, notEnoughGold) || other.notEnoughGold == notEnoughGold)&&(identical(other.farewell, farewell) || other.farewell == farewell));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,greeting,browse,purchase,notEnoughGold,farewell);

@override
String toString() {
  return 'MerchantDialoguesDto(greeting: $greeting, browse: $browse, purchase: $purchase, notEnoughGold: $notEnoughGold, farewell: $farewell)';
}


}

/// @nodoc
abstract mixin class $MerchantDialoguesDtoCopyWith<$Res>  {
  factory $MerchantDialoguesDtoCopyWith(MerchantDialoguesDto value, $Res Function(MerchantDialoguesDto) _then) = _$MerchantDialoguesDtoCopyWithImpl;
@useResult
$Res call({
 String greeting, String browse, String purchase, String notEnoughGold, String farewell
});




}
/// @nodoc
class _$MerchantDialoguesDtoCopyWithImpl<$Res>
    implements $MerchantDialoguesDtoCopyWith<$Res> {
  _$MerchantDialoguesDtoCopyWithImpl(this._self, this._then);

  final MerchantDialoguesDto _self;
  final $Res Function(MerchantDialoguesDto) _then;

/// Create a copy of MerchantDialoguesDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? greeting = null,Object? browse = null,Object? purchase = null,Object? notEnoughGold = null,Object? farewell = null,}) {
  return _then(_self.copyWith(
greeting: null == greeting ? _self.greeting : greeting // ignore: cast_nullable_to_non_nullable
as String,browse: null == browse ? _self.browse : browse // ignore: cast_nullable_to_non_nullable
as String,purchase: null == purchase ? _self.purchase : purchase // ignore: cast_nullable_to_non_nullable
as String,notEnoughGold: null == notEnoughGold ? _self.notEnoughGold : notEnoughGold // ignore: cast_nullable_to_non_nullable
as String,farewell: null == farewell ? _self.farewell : farewell // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MerchantDialoguesDto].
extension MerchantDialoguesDtoPatterns on MerchantDialoguesDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MerchantDialoguesDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MerchantDialoguesDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MerchantDialoguesDto value)  $default,){
final _that = this;
switch (_that) {
case _MerchantDialoguesDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MerchantDialoguesDto value)?  $default,){
final _that = this;
switch (_that) {
case _MerchantDialoguesDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String greeting,  String browse,  String purchase,  String notEnoughGold,  String farewell)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MerchantDialoguesDto() when $default != null:
return $default(_that.greeting,_that.browse,_that.purchase,_that.notEnoughGold,_that.farewell);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String greeting,  String browse,  String purchase,  String notEnoughGold,  String farewell)  $default,) {final _that = this;
switch (_that) {
case _MerchantDialoguesDto():
return $default(_that.greeting,_that.browse,_that.purchase,_that.notEnoughGold,_that.farewell);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String greeting,  String browse,  String purchase,  String notEnoughGold,  String farewell)?  $default,) {final _that = this;
switch (_that) {
case _MerchantDialoguesDto() when $default != null:
return $default(_that.greeting,_that.browse,_that.purchase,_that.notEnoughGold,_that.farewell);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MerchantDialoguesDto implements MerchantDialoguesDto {
  const _MerchantDialoguesDto({this.greeting = '어서 오세요!', this.browse = '천천히 둘러보세요.', this.purchase = '좋은 선택이십니다!', this.notEnoughGold = '금화가 부족하시네요...', this.farewell = '또 오세요!'});
  factory _MerchantDialoguesDto.fromJson(Map<String, dynamic> json) => _$MerchantDialoguesDtoFromJson(json);

@override@JsonKey() final  String greeting;
@override@JsonKey() final  String browse;
@override@JsonKey() final  String purchase;
@override@JsonKey() final  String notEnoughGold;
@override@JsonKey() final  String farewell;

/// Create a copy of MerchantDialoguesDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MerchantDialoguesDtoCopyWith<_MerchantDialoguesDto> get copyWith => __$MerchantDialoguesDtoCopyWithImpl<_MerchantDialoguesDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MerchantDialoguesDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MerchantDialoguesDto&&(identical(other.greeting, greeting) || other.greeting == greeting)&&(identical(other.browse, browse) || other.browse == browse)&&(identical(other.purchase, purchase) || other.purchase == purchase)&&(identical(other.notEnoughGold, notEnoughGold) || other.notEnoughGold == notEnoughGold)&&(identical(other.farewell, farewell) || other.farewell == farewell));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,greeting,browse,purchase,notEnoughGold,farewell);

@override
String toString() {
  return 'MerchantDialoguesDto(greeting: $greeting, browse: $browse, purchase: $purchase, notEnoughGold: $notEnoughGold, farewell: $farewell)';
}


}

/// @nodoc
abstract mixin class _$MerchantDialoguesDtoCopyWith<$Res> implements $MerchantDialoguesDtoCopyWith<$Res> {
  factory _$MerchantDialoguesDtoCopyWith(_MerchantDialoguesDto value, $Res Function(_MerchantDialoguesDto) _then) = __$MerchantDialoguesDtoCopyWithImpl;
@override @useResult
$Res call({
 String greeting, String browse, String purchase, String notEnoughGold, String farewell
});




}
/// @nodoc
class __$MerchantDialoguesDtoCopyWithImpl<$Res>
    implements _$MerchantDialoguesDtoCopyWith<$Res> {
  __$MerchantDialoguesDtoCopyWithImpl(this._self, this._then);

  final _MerchantDialoguesDto _self;
  final $Res Function(_MerchantDialoguesDto) _then;

/// Create a copy of MerchantDialoguesDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? greeting = null,Object? browse = null,Object? purchase = null,Object? notEnoughGold = null,Object? farewell = null,}) {
  return _then(_MerchantDialoguesDto(
greeting: null == greeting ? _self.greeting : greeting // ignore: cast_nullable_to_non_nullable
as String,browse: null == browse ? _self.browse : browse // ignore: cast_nullable_to_non_nullable
as String,purchase: null == purchase ? _self.purchase : purchase // ignore: cast_nullable_to_non_nullable
as String,notEnoughGold: null == notEnoughGold ? _self.notEnoughGold : notEnoughGold // ignore: cast_nullable_to_non_nullable
as String,farewell: null == farewell ? _self.farewell : farewell // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
