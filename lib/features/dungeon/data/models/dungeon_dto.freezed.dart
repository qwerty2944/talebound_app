// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dungeon_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DungeonListDto {

 List<DungeonDto> get dungeons;
/// Create a copy of DungeonListDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DungeonListDtoCopyWith<DungeonListDto> get copyWith => _$DungeonListDtoCopyWithImpl<DungeonListDto>(this as DungeonListDto, _$identity);

  /// Serializes this DungeonListDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DungeonListDto&&const DeepCollectionEquality().equals(other.dungeons, dungeons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(dungeons));

@override
String toString() {
  return 'DungeonListDto(dungeons: $dungeons)';
}


}

/// @nodoc
abstract mixin class $DungeonListDtoCopyWith<$Res>  {
  factory $DungeonListDtoCopyWith(DungeonListDto value, $Res Function(DungeonListDto) _then) = _$DungeonListDtoCopyWithImpl;
@useResult
$Res call({
 List<DungeonDto> dungeons
});




}
/// @nodoc
class _$DungeonListDtoCopyWithImpl<$Res>
    implements $DungeonListDtoCopyWith<$Res> {
  _$DungeonListDtoCopyWithImpl(this._self, this._then);

  final DungeonListDto _self;
  final $Res Function(DungeonListDto) _then;

/// Create a copy of DungeonListDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dungeons = null,}) {
  return _then(_self.copyWith(
dungeons: null == dungeons ? _self.dungeons : dungeons // ignore: cast_nullable_to_non_nullable
as List<DungeonDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [DungeonListDto].
extension DungeonListDtoPatterns on DungeonListDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DungeonListDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DungeonListDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DungeonListDto value)  $default,){
final _that = this;
switch (_that) {
case _DungeonListDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DungeonListDto value)?  $default,){
final _that = this;
switch (_that) {
case _DungeonListDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DungeonDto> dungeons)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DungeonListDto() when $default != null:
return $default(_that.dungeons);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DungeonDto> dungeons)  $default,) {final _that = this;
switch (_that) {
case _DungeonListDto():
return $default(_that.dungeons);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DungeonDto> dungeons)?  $default,) {final _that = this;
switch (_that) {
case _DungeonListDto() when $default != null:
return $default(_that.dungeons);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DungeonListDto implements DungeonListDto {
  const _DungeonListDto({final  List<DungeonDto> dungeons = const <DungeonDto>[]}): _dungeons = dungeons;
  factory _DungeonListDto.fromJson(Map<String, dynamic> json) => _$DungeonListDtoFromJson(json);

 final  List<DungeonDto> _dungeons;
@override@JsonKey() List<DungeonDto> get dungeons {
  if (_dungeons is EqualUnmodifiableListView) return _dungeons;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dungeons);
}


/// Create a copy of DungeonListDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DungeonListDtoCopyWith<_DungeonListDto> get copyWith => __$DungeonListDtoCopyWithImpl<_DungeonListDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DungeonListDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DungeonListDto&&const DeepCollectionEquality().equals(other._dungeons, _dungeons));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_dungeons));

@override
String toString() {
  return 'DungeonListDto(dungeons: $dungeons)';
}


}

/// @nodoc
abstract mixin class _$DungeonListDtoCopyWith<$Res> implements $DungeonListDtoCopyWith<$Res> {
  factory _$DungeonListDtoCopyWith(_DungeonListDto value, $Res Function(_DungeonListDto) _then) = __$DungeonListDtoCopyWithImpl;
@override @useResult
$Res call({
 List<DungeonDto> dungeons
});




}
/// @nodoc
class __$DungeonListDtoCopyWithImpl<$Res>
    implements _$DungeonListDtoCopyWith<$Res> {
  __$DungeonListDtoCopyWithImpl(this._self, this._then);

  final _DungeonListDto _self;
  final $Res Function(_DungeonListDto) _then;

/// Create a copy of DungeonListDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dungeons = null,}) {
  return _then(_DungeonListDto(
dungeons: null == dungeons ? _self._dungeons : dungeons // ignore: cast_nullable_to_non_nullable
as List<DungeonDto>,
  ));
}


}


/// @nodoc
mixin _$DungeonClearRewardsDto {

 int get exp; int get gold; List<DungeonRewardItemDto> get items;
/// Create a copy of DungeonClearRewardsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DungeonClearRewardsDtoCopyWith<DungeonClearRewardsDto> get copyWith => _$DungeonClearRewardsDtoCopyWithImpl<DungeonClearRewardsDto>(this as DungeonClearRewardsDto, _$identity);

  /// Serializes this DungeonClearRewardsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DungeonClearRewardsDto&&(identical(other.exp, exp) || other.exp == exp)&&(identical(other.gold, gold) || other.gold == gold)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,exp,gold,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'DungeonClearRewardsDto(exp: $exp, gold: $gold, items: $items)';
}


}

/// @nodoc
abstract mixin class $DungeonClearRewardsDtoCopyWith<$Res>  {
  factory $DungeonClearRewardsDtoCopyWith(DungeonClearRewardsDto value, $Res Function(DungeonClearRewardsDto) _then) = _$DungeonClearRewardsDtoCopyWithImpl;
@useResult
$Res call({
 int exp, int gold, List<DungeonRewardItemDto> items
});




}
/// @nodoc
class _$DungeonClearRewardsDtoCopyWithImpl<$Res>
    implements $DungeonClearRewardsDtoCopyWith<$Res> {
  _$DungeonClearRewardsDtoCopyWithImpl(this._self, this._then);

  final DungeonClearRewardsDto _self;
  final $Res Function(DungeonClearRewardsDto) _then;

/// Create a copy of DungeonClearRewardsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? exp = null,Object? gold = null,Object? items = null,}) {
  return _then(_self.copyWith(
exp: null == exp ? _self.exp : exp // ignore: cast_nullable_to_non_nullable
as int,gold: null == gold ? _self.gold : gold // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<DungeonRewardItemDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [DungeonClearRewardsDto].
extension DungeonClearRewardsDtoPatterns on DungeonClearRewardsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DungeonClearRewardsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DungeonClearRewardsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DungeonClearRewardsDto value)  $default,){
final _that = this;
switch (_that) {
case _DungeonClearRewardsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DungeonClearRewardsDto value)?  $default,){
final _that = this;
switch (_that) {
case _DungeonClearRewardsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int exp,  int gold,  List<DungeonRewardItemDto> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DungeonClearRewardsDto() when $default != null:
return $default(_that.exp,_that.gold,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int exp,  int gold,  List<DungeonRewardItemDto> items)  $default,) {final _that = this;
switch (_that) {
case _DungeonClearRewardsDto():
return $default(_that.exp,_that.gold,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int exp,  int gold,  List<DungeonRewardItemDto> items)?  $default,) {final _that = this;
switch (_that) {
case _DungeonClearRewardsDto() when $default != null:
return $default(_that.exp,_that.gold,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DungeonClearRewardsDto implements DungeonClearRewardsDto {
  const _DungeonClearRewardsDto({this.exp = 0, this.gold = 0, final  List<DungeonRewardItemDto> items = const <DungeonRewardItemDto>[]}): _items = items;
  factory _DungeonClearRewardsDto.fromJson(Map<String, dynamic> json) => _$DungeonClearRewardsDtoFromJson(json);

@override@JsonKey() final  int exp;
@override@JsonKey() final  int gold;
 final  List<DungeonRewardItemDto> _items;
@override@JsonKey() List<DungeonRewardItemDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of DungeonClearRewardsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DungeonClearRewardsDtoCopyWith<_DungeonClearRewardsDto> get copyWith => __$DungeonClearRewardsDtoCopyWithImpl<_DungeonClearRewardsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DungeonClearRewardsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DungeonClearRewardsDto&&(identical(other.exp, exp) || other.exp == exp)&&(identical(other.gold, gold) || other.gold == gold)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,exp,gold,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'DungeonClearRewardsDto(exp: $exp, gold: $gold, items: $items)';
}


}

/// @nodoc
abstract mixin class _$DungeonClearRewardsDtoCopyWith<$Res> implements $DungeonClearRewardsDtoCopyWith<$Res> {
  factory _$DungeonClearRewardsDtoCopyWith(_DungeonClearRewardsDto value, $Res Function(_DungeonClearRewardsDto) _then) = __$DungeonClearRewardsDtoCopyWithImpl;
@override @useResult
$Res call({
 int exp, int gold, List<DungeonRewardItemDto> items
});




}
/// @nodoc
class __$DungeonClearRewardsDtoCopyWithImpl<$Res>
    implements _$DungeonClearRewardsDtoCopyWith<$Res> {
  __$DungeonClearRewardsDtoCopyWithImpl(this._self, this._then);

  final _DungeonClearRewardsDto _self;
  final $Res Function(_DungeonClearRewardsDto) _then;

/// Create a copy of DungeonClearRewardsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? exp = null,Object? gold = null,Object? items = null,}) {
  return _then(_DungeonClearRewardsDto(
exp: null == exp ? _self.exp : exp // ignore: cast_nullable_to_non_nullable
as int,gold: null == gold ? _self.gold : gold // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<DungeonRewardItemDto>,
  ));
}


}


/// @nodoc
mixin _$DungeonRewardItemDto {

 String get itemId; int get quantity;
/// Create a copy of DungeonRewardItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DungeonRewardItemDtoCopyWith<DungeonRewardItemDto> get copyWith => _$DungeonRewardItemDtoCopyWithImpl<DungeonRewardItemDto>(this as DungeonRewardItemDto, _$identity);

  /// Serializes this DungeonRewardItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DungeonRewardItemDto&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,quantity);

@override
String toString() {
  return 'DungeonRewardItemDto(itemId: $itemId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $DungeonRewardItemDtoCopyWith<$Res>  {
  factory $DungeonRewardItemDtoCopyWith(DungeonRewardItemDto value, $Res Function(DungeonRewardItemDto) _then) = _$DungeonRewardItemDtoCopyWithImpl;
@useResult
$Res call({
 String itemId, int quantity
});




}
/// @nodoc
class _$DungeonRewardItemDtoCopyWithImpl<$Res>
    implements $DungeonRewardItemDtoCopyWith<$Res> {
  _$DungeonRewardItemDtoCopyWithImpl(this._self, this._then);

  final DungeonRewardItemDto _self;
  final $Res Function(DungeonRewardItemDto) _then;

/// Create a copy of DungeonRewardItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemId = null,Object? quantity = null,}) {
  return _then(_self.copyWith(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DungeonRewardItemDto].
extension DungeonRewardItemDtoPatterns on DungeonRewardItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DungeonRewardItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DungeonRewardItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DungeonRewardItemDto value)  $default,){
final _that = this;
switch (_that) {
case _DungeonRewardItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DungeonRewardItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _DungeonRewardItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String itemId,  int quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DungeonRewardItemDto() when $default != null:
return $default(_that.itemId,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String itemId,  int quantity)  $default,) {final _that = this;
switch (_that) {
case _DungeonRewardItemDto():
return $default(_that.itemId,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String itemId,  int quantity)?  $default,) {final _that = this;
switch (_that) {
case _DungeonRewardItemDto() when $default != null:
return $default(_that.itemId,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DungeonRewardItemDto extends DungeonRewardItemDto {
  const _DungeonRewardItemDto({required this.itemId, this.quantity = 1}): super._();
  factory _DungeonRewardItemDto.fromJson(Map<String, dynamic> json) => _$DungeonRewardItemDtoFromJson(json);

@override final  String itemId;
@override@JsonKey() final  int quantity;

/// Create a copy of DungeonRewardItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DungeonRewardItemDtoCopyWith<_DungeonRewardItemDto> get copyWith => __$DungeonRewardItemDtoCopyWithImpl<_DungeonRewardItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DungeonRewardItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DungeonRewardItemDto&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,quantity);

@override
String toString() {
  return 'DungeonRewardItemDto(itemId: $itemId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$DungeonRewardItemDtoCopyWith<$Res> implements $DungeonRewardItemDtoCopyWith<$Res> {
  factory _$DungeonRewardItemDtoCopyWith(_DungeonRewardItemDto value, $Res Function(_DungeonRewardItemDto) _then) = __$DungeonRewardItemDtoCopyWithImpl;
@override @useResult
$Res call({
 String itemId, int quantity
});




}
/// @nodoc
class __$DungeonRewardItemDtoCopyWithImpl<$Res>
    implements _$DungeonRewardItemDtoCopyWith<$Res> {
  __$DungeonRewardItemDtoCopyWithImpl(this._self, this._then);

  final _DungeonRewardItemDto _self;
  final $Res Function(_DungeonRewardItemDto) _then;

/// Create a copy of DungeonRewardItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? quantity = null,}) {
  return _then(_DungeonRewardItemDto(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$DungeonDto {

 String get id; String get nameKo; String get descriptionKo; String get icon; String get entryMapId; int get minLevel; int get fatigueCost; List<String> get waves; DungeonClearRewardsDto get clearRewards;
/// Create a copy of DungeonDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DungeonDtoCopyWith<DungeonDto> get copyWith => _$DungeonDtoCopyWithImpl<DungeonDto>(this as DungeonDto, _$identity);

  /// Serializes this DungeonDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DungeonDto&&(identical(other.id, id) || other.id == id)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo)&&(identical(other.descriptionKo, descriptionKo) || other.descriptionKo == descriptionKo)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.entryMapId, entryMapId) || other.entryMapId == entryMapId)&&(identical(other.minLevel, minLevel) || other.minLevel == minLevel)&&(identical(other.fatigueCost, fatigueCost) || other.fatigueCost == fatigueCost)&&const DeepCollectionEquality().equals(other.waves, waves)&&(identical(other.clearRewards, clearRewards) || other.clearRewards == clearRewards));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameKo,descriptionKo,icon,entryMapId,minLevel,fatigueCost,const DeepCollectionEquality().hash(waves),clearRewards);

@override
String toString() {
  return 'DungeonDto(id: $id, nameKo: $nameKo, descriptionKo: $descriptionKo, icon: $icon, entryMapId: $entryMapId, minLevel: $minLevel, fatigueCost: $fatigueCost, waves: $waves, clearRewards: $clearRewards)';
}


}

/// @nodoc
abstract mixin class $DungeonDtoCopyWith<$Res>  {
  factory $DungeonDtoCopyWith(DungeonDto value, $Res Function(DungeonDto) _then) = _$DungeonDtoCopyWithImpl;
@useResult
$Res call({
 String id, String nameKo, String descriptionKo, String icon, String entryMapId, int minLevel, int fatigueCost, List<String> waves, DungeonClearRewardsDto clearRewards
});


$DungeonClearRewardsDtoCopyWith<$Res> get clearRewards;

}
/// @nodoc
class _$DungeonDtoCopyWithImpl<$Res>
    implements $DungeonDtoCopyWith<$Res> {
  _$DungeonDtoCopyWithImpl(this._self, this._then);

  final DungeonDto _self;
  final $Res Function(DungeonDto) _then;

/// Create a copy of DungeonDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nameKo = null,Object? descriptionKo = null,Object? icon = null,Object? entryMapId = null,Object? minLevel = null,Object? fatigueCost = null,Object? waves = null,Object? clearRewards = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,descriptionKo: null == descriptionKo ? _self.descriptionKo : descriptionKo // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,entryMapId: null == entryMapId ? _self.entryMapId : entryMapId // ignore: cast_nullable_to_non_nullable
as String,minLevel: null == minLevel ? _self.minLevel : minLevel // ignore: cast_nullable_to_non_nullable
as int,fatigueCost: null == fatigueCost ? _self.fatigueCost : fatigueCost // ignore: cast_nullable_to_non_nullable
as int,waves: null == waves ? _self.waves : waves // ignore: cast_nullable_to_non_nullable
as List<String>,clearRewards: null == clearRewards ? _self.clearRewards : clearRewards // ignore: cast_nullable_to_non_nullable
as DungeonClearRewardsDto,
  ));
}
/// Create a copy of DungeonDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DungeonClearRewardsDtoCopyWith<$Res> get clearRewards {
  
  return $DungeonClearRewardsDtoCopyWith<$Res>(_self.clearRewards, (value) {
    return _then(_self.copyWith(clearRewards: value));
  });
}
}


/// Adds pattern-matching-related methods to [DungeonDto].
extension DungeonDtoPatterns on DungeonDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DungeonDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DungeonDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DungeonDto value)  $default,){
final _that = this;
switch (_that) {
case _DungeonDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DungeonDto value)?  $default,){
final _that = this;
switch (_that) {
case _DungeonDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String nameKo,  String descriptionKo,  String icon,  String entryMapId,  int minLevel,  int fatigueCost,  List<String> waves,  DungeonClearRewardsDto clearRewards)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DungeonDto() when $default != null:
return $default(_that.id,_that.nameKo,_that.descriptionKo,_that.icon,_that.entryMapId,_that.minLevel,_that.fatigueCost,_that.waves,_that.clearRewards);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String nameKo,  String descriptionKo,  String icon,  String entryMapId,  int minLevel,  int fatigueCost,  List<String> waves,  DungeonClearRewardsDto clearRewards)  $default,) {final _that = this;
switch (_that) {
case _DungeonDto():
return $default(_that.id,_that.nameKo,_that.descriptionKo,_that.icon,_that.entryMapId,_that.minLevel,_that.fatigueCost,_that.waves,_that.clearRewards);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String nameKo,  String descriptionKo,  String icon,  String entryMapId,  int minLevel,  int fatigueCost,  List<String> waves,  DungeonClearRewardsDto clearRewards)?  $default,) {final _that = this;
switch (_that) {
case _DungeonDto() when $default != null:
return $default(_that.id,_that.nameKo,_that.descriptionKo,_that.icon,_that.entryMapId,_that.minLevel,_that.fatigueCost,_that.waves,_that.clearRewards);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DungeonDto extends DungeonDto {
  const _DungeonDto({required this.id, this.nameKo = '던전', this.descriptionKo = '', this.icon = '🏛️', this.entryMapId = '', this.minLevel = 1, this.fatigueCost = 0, final  List<String> waves = const <String>[], this.clearRewards = const DungeonClearRewardsDto()}): _waves = waves,super._();
  factory _DungeonDto.fromJson(Map<String, dynamic> json) => _$DungeonDtoFromJson(json);

@override final  String id;
@override@JsonKey() final  String nameKo;
@override@JsonKey() final  String descriptionKo;
@override@JsonKey() final  String icon;
@override@JsonKey() final  String entryMapId;
@override@JsonKey() final  int minLevel;
@override@JsonKey() final  int fatigueCost;
 final  List<String> _waves;
@override@JsonKey() List<String> get waves {
  if (_waves is EqualUnmodifiableListView) return _waves;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_waves);
}

@override@JsonKey() final  DungeonClearRewardsDto clearRewards;

/// Create a copy of DungeonDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DungeonDtoCopyWith<_DungeonDto> get copyWith => __$DungeonDtoCopyWithImpl<_DungeonDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DungeonDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DungeonDto&&(identical(other.id, id) || other.id == id)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo)&&(identical(other.descriptionKo, descriptionKo) || other.descriptionKo == descriptionKo)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.entryMapId, entryMapId) || other.entryMapId == entryMapId)&&(identical(other.minLevel, minLevel) || other.minLevel == minLevel)&&(identical(other.fatigueCost, fatigueCost) || other.fatigueCost == fatigueCost)&&const DeepCollectionEquality().equals(other._waves, _waves)&&(identical(other.clearRewards, clearRewards) || other.clearRewards == clearRewards));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameKo,descriptionKo,icon,entryMapId,minLevel,fatigueCost,const DeepCollectionEquality().hash(_waves),clearRewards);

@override
String toString() {
  return 'DungeonDto(id: $id, nameKo: $nameKo, descriptionKo: $descriptionKo, icon: $icon, entryMapId: $entryMapId, minLevel: $minLevel, fatigueCost: $fatigueCost, waves: $waves, clearRewards: $clearRewards)';
}


}

/// @nodoc
abstract mixin class _$DungeonDtoCopyWith<$Res> implements $DungeonDtoCopyWith<$Res> {
  factory _$DungeonDtoCopyWith(_DungeonDto value, $Res Function(_DungeonDto) _then) = __$DungeonDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String nameKo, String descriptionKo, String icon, String entryMapId, int minLevel, int fatigueCost, List<String> waves, DungeonClearRewardsDto clearRewards
});


@override $DungeonClearRewardsDtoCopyWith<$Res> get clearRewards;

}
/// @nodoc
class __$DungeonDtoCopyWithImpl<$Res>
    implements _$DungeonDtoCopyWith<$Res> {
  __$DungeonDtoCopyWithImpl(this._self, this._then);

  final _DungeonDto _self;
  final $Res Function(_DungeonDto) _then;

/// Create a copy of DungeonDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nameKo = null,Object? descriptionKo = null,Object? icon = null,Object? entryMapId = null,Object? minLevel = null,Object? fatigueCost = null,Object? waves = null,Object? clearRewards = null,}) {
  return _then(_DungeonDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,descriptionKo: null == descriptionKo ? _self.descriptionKo : descriptionKo // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,entryMapId: null == entryMapId ? _self.entryMapId : entryMapId // ignore: cast_nullable_to_non_nullable
as String,minLevel: null == minLevel ? _self.minLevel : minLevel // ignore: cast_nullable_to_non_nullable
as int,fatigueCost: null == fatigueCost ? _self.fatigueCost : fatigueCost // ignore: cast_nullable_to_non_nullable
as int,waves: null == waves ? _self._waves : waves // ignore: cast_nullable_to_non_nullable
as List<String>,clearRewards: null == clearRewards ? _self.clearRewards : clearRewards // ignore: cast_nullable_to_non_nullable
as DungeonClearRewardsDto,
  ));
}

/// Create a copy of DungeonDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DungeonClearRewardsDtoCopyWith<$Res> get clearRewards {
  
  return $DungeonClearRewardsDtoCopyWith<$Res>(_self.clearRewards, (value) {
    return _then(_self.copyWith(clearRewards: value));
  });
}
}

// dart format on
