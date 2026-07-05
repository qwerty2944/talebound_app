// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameItemDto {

 String get id; String get nameKo; String get nameEn; String get type; String? get subtype; String get rarity; int get value; bool get stackable; String? get weaponType; String? get slot; Map<String, num> get stats; Map<String, num> get requirements; String? get icon;
/// Create a copy of GameItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameItemDtoCopyWith<GameItemDto> get copyWith => _$GameItemDtoCopyWithImpl<GameItemDto>(this as GameItemDto, _$identity);

  /// Serializes this GameItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.type, type) || other.type == type)&&(identical(other.subtype, subtype) || other.subtype == subtype)&&(identical(other.rarity, rarity) || other.rarity == rarity)&&(identical(other.value, value) || other.value == value)&&(identical(other.stackable, stackable) || other.stackable == stackable)&&(identical(other.weaponType, weaponType) || other.weaponType == weaponType)&&(identical(other.slot, slot) || other.slot == slot)&&const DeepCollectionEquality().equals(other.stats, stats)&&const DeepCollectionEquality().equals(other.requirements, requirements)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameKo,nameEn,type,subtype,rarity,value,stackable,weaponType,slot,const DeepCollectionEquality().hash(stats),const DeepCollectionEquality().hash(requirements),icon);

@override
String toString() {
  return 'GameItemDto(id: $id, nameKo: $nameKo, nameEn: $nameEn, type: $type, subtype: $subtype, rarity: $rarity, value: $value, stackable: $stackable, weaponType: $weaponType, slot: $slot, stats: $stats, requirements: $requirements, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $GameItemDtoCopyWith<$Res>  {
  factory $GameItemDtoCopyWith(GameItemDto value, $Res Function(GameItemDto) _then) = _$GameItemDtoCopyWithImpl;
@useResult
$Res call({
 String id, String nameKo, String nameEn, String type, String? subtype, String rarity, int value, bool stackable, String? weaponType, String? slot, Map<String, num> stats, Map<String, num> requirements, String? icon
});




}
/// @nodoc
class _$GameItemDtoCopyWithImpl<$Res>
    implements $GameItemDtoCopyWith<$Res> {
  _$GameItemDtoCopyWithImpl(this._self, this._then);

  final GameItemDto _self;
  final $Res Function(GameItemDto) _then;

/// Create a copy of GameItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nameKo = null,Object? nameEn = null,Object? type = null,Object? subtype = freezed,Object? rarity = null,Object? value = null,Object? stackable = null,Object? weaponType = freezed,Object? slot = freezed,Object? stats = null,Object? requirements = null,Object? icon = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,nameEn: null == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,subtype: freezed == subtype ? _self.subtype : subtype // ignore: cast_nullable_to_non_nullable
as String?,rarity: null == rarity ? _self.rarity : rarity // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,stackable: null == stackable ? _self.stackable : stackable // ignore: cast_nullable_to_non_nullable
as bool,weaponType: freezed == weaponType ? _self.weaponType : weaponType // ignore: cast_nullable_to_non_nullable
as String?,slot: freezed == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as String?,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as Map<String, num>,requirements: null == requirements ? _self.requirements : requirements // ignore: cast_nullable_to_non_nullable
as Map<String, num>,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GameItemDto].
extension GameItemDtoPatterns on GameItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameItemDto value)  $default,){
final _that = this;
switch (_that) {
case _GameItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _GameItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String nameKo,  String nameEn,  String type,  String? subtype,  String rarity,  int value,  bool stackable,  String? weaponType,  String? slot,  Map<String, num> stats,  Map<String, num> requirements,  String? icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameItemDto() when $default != null:
return $default(_that.id,_that.nameKo,_that.nameEn,_that.type,_that.subtype,_that.rarity,_that.value,_that.stackable,_that.weaponType,_that.slot,_that.stats,_that.requirements,_that.icon);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String nameKo,  String nameEn,  String type,  String? subtype,  String rarity,  int value,  bool stackable,  String? weaponType,  String? slot,  Map<String, num> stats,  Map<String, num> requirements,  String? icon)  $default,) {final _that = this;
switch (_that) {
case _GameItemDto():
return $default(_that.id,_that.nameKo,_that.nameEn,_that.type,_that.subtype,_that.rarity,_that.value,_that.stackable,_that.weaponType,_that.slot,_that.stats,_that.requirements,_that.icon);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String nameKo,  String nameEn,  String type,  String? subtype,  String rarity,  int value,  bool stackable,  String? weaponType,  String? slot,  Map<String, num> stats,  Map<String, num> requirements,  String? icon)?  $default,) {final _that = this;
switch (_that) {
case _GameItemDto() when $default != null:
return $default(_that.id,_that.nameKo,_that.nameEn,_that.type,_that.subtype,_that.rarity,_that.value,_that.stackable,_that.weaponType,_that.slot,_that.stats,_that.requirements,_that.icon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameItemDto implements GameItemDto {
  const _GameItemDto({required this.id, this.nameKo = '', this.nameEn = '', this.type = 'misc', this.subtype, this.rarity = 'common', this.value = 0, this.stackable = false, this.weaponType, this.slot, final  Map<String, num> stats = const <String, num>{}, final  Map<String, num> requirements = const <String, num>{}, this.icon}): _stats = stats,_requirements = requirements;
  factory _GameItemDto.fromJson(Map<String, dynamic> json) => _$GameItemDtoFromJson(json);

@override final  String id;
@override@JsonKey() final  String nameKo;
@override@JsonKey() final  String nameEn;
@override@JsonKey() final  String type;
@override final  String? subtype;
@override@JsonKey() final  String rarity;
@override@JsonKey() final  int value;
@override@JsonKey() final  bool stackable;
@override final  String? weaponType;
@override final  String? slot;
 final  Map<String, num> _stats;
@override@JsonKey() Map<String, num> get stats {
  if (_stats is EqualUnmodifiableMapView) return _stats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_stats);
}

 final  Map<String, num> _requirements;
@override@JsonKey() Map<String, num> get requirements {
  if (_requirements is EqualUnmodifiableMapView) return _requirements;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_requirements);
}

@override final  String? icon;

/// Create a copy of GameItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameItemDtoCopyWith<_GameItemDto> get copyWith => __$GameItemDtoCopyWithImpl<_GameItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.type, type) || other.type == type)&&(identical(other.subtype, subtype) || other.subtype == subtype)&&(identical(other.rarity, rarity) || other.rarity == rarity)&&(identical(other.value, value) || other.value == value)&&(identical(other.stackable, stackable) || other.stackable == stackable)&&(identical(other.weaponType, weaponType) || other.weaponType == weaponType)&&(identical(other.slot, slot) || other.slot == slot)&&const DeepCollectionEquality().equals(other._stats, _stats)&&const DeepCollectionEquality().equals(other._requirements, _requirements)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameKo,nameEn,type,subtype,rarity,value,stackable,weaponType,slot,const DeepCollectionEquality().hash(_stats),const DeepCollectionEquality().hash(_requirements),icon);

@override
String toString() {
  return 'GameItemDto(id: $id, nameKo: $nameKo, nameEn: $nameEn, type: $type, subtype: $subtype, rarity: $rarity, value: $value, stackable: $stackable, weaponType: $weaponType, slot: $slot, stats: $stats, requirements: $requirements, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$GameItemDtoCopyWith<$Res> implements $GameItemDtoCopyWith<$Res> {
  factory _$GameItemDtoCopyWith(_GameItemDto value, $Res Function(_GameItemDto) _then) = __$GameItemDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String nameKo, String nameEn, String type, String? subtype, String rarity, int value, bool stackable, String? weaponType, String? slot, Map<String, num> stats, Map<String, num> requirements, String? icon
});




}
/// @nodoc
class __$GameItemDtoCopyWithImpl<$Res>
    implements _$GameItemDtoCopyWith<$Res> {
  __$GameItemDtoCopyWithImpl(this._self, this._then);

  final _GameItemDto _self;
  final $Res Function(_GameItemDto) _then;

/// Create a copy of GameItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nameKo = null,Object? nameEn = null,Object? type = null,Object? subtype = freezed,Object? rarity = null,Object? value = null,Object? stackable = null,Object? weaponType = freezed,Object? slot = freezed,Object? stats = null,Object? requirements = null,Object? icon = freezed,}) {
  return _then(_GameItemDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,nameEn: null == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,subtype: freezed == subtype ? _self.subtype : subtype // ignore: cast_nullable_to_non_nullable
as String?,rarity: null == rarity ? _self.rarity : rarity // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,stackable: null == stackable ? _self.stackable : stackable // ignore: cast_nullable_to_non_nullable
as bool,weaponType: freezed == weaponType ? _self.weaponType : weaponType // ignore: cast_nullable_to_non_nullable
as String?,slot: freezed == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as String?,stats: null == stats ? _self._stats : stats // ignore: cast_nullable_to_non_nullable
as Map<String, num>,requirements: null == requirements ? _self._requirements : requirements // ignore: cast_nullable_to_non_nullable
as Map<String, num>,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$GameItemFileDto {

 List<GameItemDto> get items;
/// Create a copy of GameItemFileDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameItemFileDtoCopyWith<GameItemFileDto> get copyWith => _$GameItemFileDtoCopyWithImpl<GameItemFileDto>(this as GameItemFileDto, _$identity);

  /// Serializes this GameItemFileDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameItemFileDto&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'GameItemFileDto(items: $items)';
}


}

/// @nodoc
abstract mixin class $GameItemFileDtoCopyWith<$Res>  {
  factory $GameItemFileDtoCopyWith(GameItemFileDto value, $Res Function(GameItemFileDto) _then) = _$GameItemFileDtoCopyWithImpl;
@useResult
$Res call({
 List<GameItemDto> items
});




}
/// @nodoc
class _$GameItemFileDtoCopyWithImpl<$Res>
    implements $GameItemFileDtoCopyWith<$Res> {
  _$GameItemFileDtoCopyWithImpl(this._self, this._then);

  final GameItemFileDto _self;
  final $Res Function(GameItemFileDto) _then;

/// Create a copy of GameItemFileDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<GameItemDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [GameItemFileDto].
extension GameItemFileDtoPatterns on GameItemFileDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameItemFileDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameItemFileDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameItemFileDto value)  $default,){
final _that = this;
switch (_that) {
case _GameItemFileDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameItemFileDto value)?  $default,){
final _that = this;
switch (_that) {
case _GameItemFileDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<GameItemDto> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameItemFileDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<GameItemDto> items)  $default,) {final _that = this;
switch (_that) {
case _GameItemFileDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<GameItemDto> items)?  $default,) {final _that = this;
switch (_that) {
case _GameItemFileDto() when $default != null:
return $default(_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameItemFileDto implements GameItemFileDto {
  const _GameItemFileDto({final  List<GameItemDto> items = const <GameItemDto>[]}): _items = items;
  factory _GameItemFileDto.fromJson(Map<String, dynamic> json) => _$GameItemFileDtoFromJson(json);

 final  List<GameItemDto> _items;
@override@JsonKey() List<GameItemDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of GameItemFileDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameItemFileDtoCopyWith<_GameItemFileDto> get copyWith => __$GameItemFileDtoCopyWithImpl<_GameItemFileDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameItemFileDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameItemFileDto&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'GameItemFileDto(items: $items)';
}


}

/// @nodoc
abstract mixin class _$GameItemFileDtoCopyWith<$Res> implements $GameItemFileDtoCopyWith<$Res> {
  factory _$GameItemFileDtoCopyWith(_GameItemFileDto value, $Res Function(_GameItemFileDto) _then) = __$GameItemFileDtoCopyWithImpl;
@override @useResult
$Res call({
 List<GameItemDto> items
});




}
/// @nodoc
class __$GameItemFileDtoCopyWithImpl<$Res>
    implements _$GameItemFileDtoCopyWith<$Res> {
  __$GameItemFileDtoCopyWithImpl(this._self, this._then);

  final _GameItemFileDto _self;
  final $Res Function(_GameItemFileDto) _then;

/// Create a copy of GameItemFileDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(_GameItemFileDto(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<GameItemDto>,
  ));
}


}

// dart format on
