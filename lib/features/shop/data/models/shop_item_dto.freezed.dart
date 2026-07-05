// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShopItemCatalogDto {

 List<ShopItemDto> get items;
/// Create a copy of ShopItemCatalogDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShopItemCatalogDtoCopyWith<ShopItemCatalogDto> get copyWith => _$ShopItemCatalogDtoCopyWithImpl<ShopItemCatalogDto>(this as ShopItemCatalogDto, _$identity);

  /// Serializes this ShopItemCatalogDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShopItemCatalogDto&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'ShopItemCatalogDto(items: $items)';
}


}

/// @nodoc
abstract mixin class $ShopItemCatalogDtoCopyWith<$Res>  {
  factory $ShopItemCatalogDtoCopyWith(ShopItemCatalogDto value, $Res Function(ShopItemCatalogDto) _then) = _$ShopItemCatalogDtoCopyWithImpl;
@useResult
$Res call({
 List<ShopItemDto> items
});




}
/// @nodoc
class _$ShopItemCatalogDtoCopyWithImpl<$Res>
    implements $ShopItemCatalogDtoCopyWith<$Res> {
  _$ShopItemCatalogDtoCopyWithImpl(this._self, this._then);

  final ShopItemCatalogDto _self;
  final $Res Function(ShopItemCatalogDto) _then;

/// Create a copy of ShopItemCatalogDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ShopItemDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [ShopItemCatalogDto].
extension ShopItemCatalogDtoPatterns on ShopItemCatalogDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShopItemCatalogDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShopItemCatalogDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShopItemCatalogDto value)  $default,){
final _that = this;
switch (_that) {
case _ShopItemCatalogDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShopItemCatalogDto value)?  $default,){
final _that = this;
switch (_that) {
case _ShopItemCatalogDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ShopItemDto> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShopItemCatalogDto() when $default != null:
return $default(_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ShopItemDto> items)  $default,) {final _that = this;
switch (_that) {
case _ShopItemCatalogDto():
return $default(_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ShopItemDto> items)?  $default,) {final _that = this;
switch (_that) {
case _ShopItemCatalogDto() when $default != null:
return $default(_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShopItemCatalogDto implements ShopItemCatalogDto {
  const _ShopItemCatalogDto({final  List<ShopItemDto> items = const <ShopItemDto>[]}): _items = items;
  factory _ShopItemCatalogDto.fromJson(Map<String, dynamic> json) => _$ShopItemCatalogDtoFromJson(json);

 final  List<ShopItemDto> _items;
@override@JsonKey() List<ShopItemDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of ShopItemCatalogDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShopItemCatalogDtoCopyWith<_ShopItemCatalogDto> get copyWith => __$ShopItemCatalogDtoCopyWithImpl<_ShopItemCatalogDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShopItemCatalogDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShopItemCatalogDto&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'ShopItemCatalogDto(items: $items)';
}


}

/// @nodoc
abstract mixin class _$ShopItemCatalogDtoCopyWith<$Res> implements $ShopItemCatalogDtoCopyWith<$Res> {
  factory _$ShopItemCatalogDtoCopyWith(_ShopItemCatalogDto value, $Res Function(_ShopItemCatalogDto) _then) = __$ShopItemCatalogDtoCopyWithImpl;
@override @useResult
$Res call({
 List<ShopItemDto> items
});




}
/// @nodoc
class __$ShopItemCatalogDtoCopyWithImpl<$Res>
    implements _$ShopItemCatalogDtoCopyWith<$Res> {
  __$ShopItemCatalogDtoCopyWithImpl(this._self, this._then);

  final _ShopItemCatalogDto _self;
  final $Res Function(_ShopItemCatalogDto) _then;

/// Create a copy of ShopItemCatalogDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(_ShopItemCatalogDto(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ShopItemDto>,
  ));
}


}


/// @nodoc
mixin _$ShopItemDto {

 String get id; String get nameKo; String get type; String get subtype; String get rarity; int get value; bool get stackable; String? get weaponType;
/// Create a copy of ShopItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShopItemDtoCopyWith<ShopItemDto> get copyWith => _$ShopItemDtoCopyWithImpl<ShopItemDto>(this as ShopItemDto, _$identity);

  /// Serializes this ShopItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShopItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo)&&(identical(other.type, type) || other.type == type)&&(identical(other.subtype, subtype) || other.subtype == subtype)&&(identical(other.rarity, rarity) || other.rarity == rarity)&&(identical(other.value, value) || other.value == value)&&(identical(other.stackable, stackable) || other.stackable == stackable)&&(identical(other.weaponType, weaponType) || other.weaponType == weaponType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameKo,type,subtype,rarity,value,stackable,weaponType);

@override
String toString() {
  return 'ShopItemDto(id: $id, nameKo: $nameKo, type: $type, subtype: $subtype, rarity: $rarity, value: $value, stackable: $stackable, weaponType: $weaponType)';
}


}

/// @nodoc
abstract mixin class $ShopItemDtoCopyWith<$Res>  {
  factory $ShopItemDtoCopyWith(ShopItemDto value, $Res Function(ShopItemDto) _then) = _$ShopItemDtoCopyWithImpl;
@useResult
$Res call({
 String id, String nameKo, String type, String subtype, String rarity, int value, bool stackable, String? weaponType
});




}
/// @nodoc
class _$ShopItemDtoCopyWithImpl<$Res>
    implements $ShopItemDtoCopyWith<$Res> {
  _$ShopItemDtoCopyWithImpl(this._self, this._then);

  final ShopItemDto _self;
  final $Res Function(ShopItemDto) _then;

/// Create a copy of ShopItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nameKo = null,Object? type = null,Object? subtype = null,Object? rarity = null,Object? value = null,Object? stackable = null,Object? weaponType = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,subtype: null == subtype ? _self.subtype : subtype // ignore: cast_nullable_to_non_nullable
as String,rarity: null == rarity ? _self.rarity : rarity // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,stackable: null == stackable ? _self.stackable : stackable // ignore: cast_nullable_to_non_nullable
as bool,weaponType: freezed == weaponType ? _self.weaponType : weaponType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ShopItemDto].
extension ShopItemDtoPatterns on ShopItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShopItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShopItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShopItemDto value)  $default,){
final _that = this;
switch (_that) {
case _ShopItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShopItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _ShopItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String nameKo,  String type,  String subtype,  String rarity,  int value,  bool stackable,  String? weaponType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShopItemDto() when $default != null:
return $default(_that.id,_that.nameKo,_that.type,_that.subtype,_that.rarity,_that.value,_that.stackable,_that.weaponType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String nameKo,  String type,  String subtype,  String rarity,  int value,  bool stackable,  String? weaponType)  $default,) {final _that = this;
switch (_that) {
case _ShopItemDto():
return $default(_that.id,_that.nameKo,_that.type,_that.subtype,_that.rarity,_that.value,_that.stackable,_that.weaponType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String nameKo,  String type,  String subtype,  String rarity,  int value,  bool stackable,  String? weaponType)?  $default,) {final _that = this;
switch (_that) {
case _ShopItemDto() when $default != null:
return $default(_that.id,_that.nameKo,_that.type,_that.subtype,_that.rarity,_that.value,_that.stackable,_that.weaponType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShopItemDto extends ShopItemDto {
  const _ShopItemDto({required this.id, this.nameKo = '아이템', this.type = 'misc', this.subtype = '', this.rarity = 'common', this.value = 0, this.stackable = false, this.weaponType}): super._();
  factory _ShopItemDto.fromJson(Map<String, dynamic> json) => _$ShopItemDtoFromJson(json);

@override final  String id;
@override@JsonKey() final  String nameKo;
@override@JsonKey() final  String type;
@override@JsonKey() final  String subtype;
@override@JsonKey() final  String rarity;
@override@JsonKey() final  int value;
@override@JsonKey() final  bool stackable;
@override final  String? weaponType;

/// Create a copy of ShopItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShopItemDtoCopyWith<_ShopItemDto> get copyWith => __$ShopItemDtoCopyWithImpl<_ShopItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShopItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShopItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo)&&(identical(other.type, type) || other.type == type)&&(identical(other.subtype, subtype) || other.subtype == subtype)&&(identical(other.rarity, rarity) || other.rarity == rarity)&&(identical(other.value, value) || other.value == value)&&(identical(other.stackable, stackable) || other.stackable == stackable)&&(identical(other.weaponType, weaponType) || other.weaponType == weaponType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameKo,type,subtype,rarity,value,stackable,weaponType);

@override
String toString() {
  return 'ShopItemDto(id: $id, nameKo: $nameKo, type: $type, subtype: $subtype, rarity: $rarity, value: $value, stackable: $stackable, weaponType: $weaponType)';
}


}

/// @nodoc
abstract mixin class _$ShopItemDtoCopyWith<$Res> implements $ShopItemDtoCopyWith<$Res> {
  factory _$ShopItemDtoCopyWith(_ShopItemDto value, $Res Function(_ShopItemDto) _then) = __$ShopItemDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String nameKo, String type, String subtype, String rarity, int value, bool stackable, String? weaponType
});




}
/// @nodoc
class __$ShopItemDtoCopyWithImpl<$Res>
    implements _$ShopItemDtoCopyWith<$Res> {
  __$ShopItemDtoCopyWithImpl(this._self, this._then);

  final _ShopItemDto _self;
  final $Res Function(_ShopItemDto) _then;

/// Create a copy of ShopItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nameKo = null,Object? type = null,Object? subtype = null,Object? rarity = null,Object? value = null,Object? stackable = null,Object? weaponType = freezed,}) {
  return _then(_ShopItemDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,subtype: null == subtype ? _self.subtype : subtype // ignore: cast_nullable_to_non_nullable
as String,rarity: null == rarity ? _self.rarity : rarity // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,stackable: null == stackable ? _self.stackable : stackable // ignore: cast_nullable_to_non_nullable
as bool,weaponType: freezed == weaponType ? _self.weaponType : weaponType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
