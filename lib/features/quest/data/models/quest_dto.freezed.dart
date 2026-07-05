// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quest_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuestObjectiveDto {

 String get type; String? get monsterId; String? get itemId; String? get mapId; int? get count;
/// Create a copy of QuestObjectiveDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestObjectiveDtoCopyWith<QuestObjectiveDto> get copyWith => _$QuestObjectiveDtoCopyWithImpl<QuestObjectiveDto>(this as QuestObjectiveDto, _$identity);

  /// Serializes this QuestObjectiveDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestObjectiveDto&&(identical(other.type, type) || other.type == type)&&(identical(other.monsterId, monsterId) || other.monsterId == monsterId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.mapId, mapId) || other.mapId == mapId)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,monsterId,itemId,mapId,count);

@override
String toString() {
  return 'QuestObjectiveDto(type: $type, monsterId: $monsterId, itemId: $itemId, mapId: $mapId, count: $count)';
}


}

/// @nodoc
abstract mixin class $QuestObjectiveDtoCopyWith<$Res>  {
  factory $QuestObjectiveDtoCopyWith(QuestObjectiveDto value, $Res Function(QuestObjectiveDto) _then) = _$QuestObjectiveDtoCopyWithImpl;
@useResult
$Res call({
 String type, String? monsterId, String? itemId, String? mapId, int? count
});




}
/// @nodoc
class _$QuestObjectiveDtoCopyWithImpl<$Res>
    implements $QuestObjectiveDtoCopyWith<$Res> {
  _$QuestObjectiveDtoCopyWithImpl(this._self, this._then);

  final QuestObjectiveDto _self;
  final $Res Function(QuestObjectiveDto) _then;

/// Create a copy of QuestObjectiveDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? monsterId = freezed,Object? itemId = freezed,Object? mapId = freezed,Object? count = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,monsterId: freezed == monsterId ? _self.monsterId : monsterId // ignore: cast_nullable_to_non_nullable
as String?,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String?,mapId: freezed == mapId ? _self.mapId : mapId // ignore: cast_nullable_to_non_nullable
as String?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [QuestObjectiveDto].
extension QuestObjectiveDtoPatterns on QuestObjectiveDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestObjectiveDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestObjectiveDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestObjectiveDto value)  $default,){
final _that = this;
switch (_that) {
case _QuestObjectiveDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestObjectiveDto value)?  $default,){
final _that = this;
switch (_that) {
case _QuestObjectiveDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String? monsterId,  String? itemId,  String? mapId,  int? count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestObjectiveDto() when $default != null:
return $default(_that.type,_that.monsterId,_that.itemId,_that.mapId,_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String? monsterId,  String? itemId,  String? mapId,  int? count)  $default,) {final _that = this;
switch (_that) {
case _QuestObjectiveDto():
return $default(_that.type,_that.monsterId,_that.itemId,_that.mapId,_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String? monsterId,  String? itemId,  String? mapId,  int? count)?  $default,) {final _that = this;
switch (_that) {
case _QuestObjectiveDto() when $default != null:
return $default(_that.type,_that.monsterId,_that.itemId,_that.mapId,_that.count);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuestObjectiveDto extends QuestObjectiveDto {
  const _QuestObjectiveDto({this.type = 'unknown', this.monsterId, this.itemId, this.mapId, this.count}): super._();
  factory _QuestObjectiveDto.fromJson(Map<String, dynamic> json) => _$QuestObjectiveDtoFromJson(json);

@override@JsonKey() final  String type;
@override final  String? monsterId;
@override final  String? itemId;
@override final  String? mapId;
@override final  int? count;

/// Create a copy of QuestObjectiveDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestObjectiveDtoCopyWith<_QuestObjectiveDto> get copyWith => __$QuestObjectiveDtoCopyWithImpl<_QuestObjectiveDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestObjectiveDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestObjectiveDto&&(identical(other.type, type) || other.type == type)&&(identical(other.monsterId, monsterId) || other.monsterId == monsterId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.mapId, mapId) || other.mapId == mapId)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,monsterId,itemId,mapId,count);

@override
String toString() {
  return 'QuestObjectiveDto(type: $type, monsterId: $monsterId, itemId: $itemId, mapId: $mapId, count: $count)';
}


}

/// @nodoc
abstract mixin class _$QuestObjectiveDtoCopyWith<$Res> implements $QuestObjectiveDtoCopyWith<$Res> {
  factory _$QuestObjectiveDtoCopyWith(_QuestObjectiveDto value, $Res Function(_QuestObjectiveDto) _then) = __$QuestObjectiveDtoCopyWithImpl;
@override @useResult
$Res call({
 String type, String? monsterId, String? itemId, String? mapId, int? count
});




}
/// @nodoc
class __$QuestObjectiveDtoCopyWithImpl<$Res>
    implements _$QuestObjectiveDtoCopyWith<$Res> {
  __$QuestObjectiveDtoCopyWithImpl(this._self, this._then);

  final _QuestObjectiveDto _self;
  final $Res Function(_QuestObjectiveDto) _then;

/// Create a copy of QuestObjectiveDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? monsterId = freezed,Object? itemId = freezed,Object? mapId = freezed,Object? count = freezed,}) {
  return _then(_QuestObjectiveDto(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,monsterId: freezed == monsterId ? _self.monsterId : monsterId // ignore: cast_nullable_to_non_nullable
as String?,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String?,mapId: freezed == mapId ? _self.mapId : mapId // ignore: cast_nullable_to_non_nullable
as String?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$QuestRewardItemDto {

 String get itemId; int get quantity;
/// Create a copy of QuestRewardItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestRewardItemDtoCopyWith<QuestRewardItemDto> get copyWith => _$QuestRewardItemDtoCopyWithImpl<QuestRewardItemDto>(this as QuestRewardItemDto, _$identity);

  /// Serializes this QuestRewardItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestRewardItemDto&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,quantity);

@override
String toString() {
  return 'QuestRewardItemDto(itemId: $itemId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $QuestRewardItemDtoCopyWith<$Res>  {
  factory $QuestRewardItemDtoCopyWith(QuestRewardItemDto value, $Res Function(QuestRewardItemDto) _then) = _$QuestRewardItemDtoCopyWithImpl;
@useResult
$Res call({
 String itemId, int quantity
});




}
/// @nodoc
class _$QuestRewardItemDtoCopyWithImpl<$Res>
    implements $QuestRewardItemDtoCopyWith<$Res> {
  _$QuestRewardItemDtoCopyWithImpl(this._self, this._then);

  final QuestRewardItemDto _self;
  final $Res Function(QuestRewardItemDto) _then;

/// Create a copy of QuestRewardItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemId = null,Object? quantity = null,}) {
  return _then(_self.copyWith(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [QuestRewardItemDto].
extension QuestRewardItemDtoPatterns on QuestRewardItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestRewardItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestRewardItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestRewardItemDto value)  $default,){
final _that = this;
switch (_that) {
case _QuestRewardItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestRewardItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _QuestRewardItemDto() when $default != null:
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
case _QuestRewardItemDto() when $default != null:
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
case _QuestRewardItemDto():
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
case _QuestRewardItemDto() when $default != null:
return $default(_that.itemId,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuestRewardItemDto extends QuestRewardItemDto {
  const _QuestRewardItemDto({required this.itemId, this.quantity = 1}): super._();
  factory _QuestRewardItemDto.fromJson(Map<String, dynamic> json) => _$QuestRewardItemDtoFromJson(json);

@override final  String itemId;
@override@JsonKey() final  int quantity;

/// Create a copy of QuestRewardItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestRewardItemDtoCopyWith<_QuestRewardItemDto> get copyWith => __$QuestRewardItemDtoCopyWithImpl<_QuestRewardItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestRewardItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestRewardItemDto&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,quantity);

@override
String toString() {
  return 'QuestRewardItemDto(itemId: $itemId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$QuestRewardItemDtoCopyWith<$Res> implements $QuestRewardItemDtoCopyWith<$Res> {
  factory _$QuestRewardItemDtoCopyWith(_QuestRewardItemDto value, $Res Function(_QuestRewardItemDto) _then) = __$QuestRewardItemDtoCopyWithImpl;
@override @useResult
$Res call({
 String itemId, int quantity
});




}
/// @nodoc
class __$QuestRewardItemDtoCopyWithImpl<$Res>
    implements _$QuestRewardItemDtoCopyWith<$Res> {
  __$QuestRewardItemDtoCopyWithImpl(this._self, this._then);

  final _QuestRewardItemDto _self;
  final $Res Function(_QuestRewardItemDto) _then;

/// Create a copy of QuestRewardItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? quantity = null,}) {
  return _then(_QuestRewardItemDto(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$QuestRewardDto {

 int get exp; int get gold; List<QuestRewardItemDto> get items;
/// Create a copy of QuestRewardDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestRewardDtoCopyWith<QuestRewardDto> get copyWith => _$QuestRewardDtoCopyWithImpl<QuestRewardDto>(this as QuestRewardDto, _$identity);

  /// Serializes this QuestRewardDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestRewardDto&&(identical(other.exp, exp) || other.exp == exp)&&(identical(other.gold, gold) || other.gold == gold)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,exp,gold,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'QuestRewardDto(exp: $exp, gold: $gold, items: $items)';
}


}

/// @nodoc
abstract mixin class $QuestRewardDtoCopyWith<$Res>  {
  factory $QuestRewardDtoCopyWith(QuestRewardDto value, $Res Function(QuestRewardDto) _then) = _$QuestRewardDtoCopyWithImpl;
@useResult
$Res call({
 int exp, int gold, List<QuestRewardItemDto> items
});




}
/// @nodoc
class _$QuestRewardDtoCopyWithImpl<$Res>
    implements $QuestRewardDtoCopyWith<$Res> {
  _$QuestRewardDtoCopyWithImpl(this._self, this._then);

  final QuestRewardDto _self;
  final $Res Function(QuestRewardDto) _then;

/// Create a copy of QuestRewardDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? exp = null,Object? gold = null,Object? items = null,}) {
  return _then(_self.copyWith(
exp: null == exp ? _self.exp : exp // ignore: cast_nullable_to_non_nullable
as int,gold: null == gold ? _self.gold : gold // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<QuestRewardItemDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [QuestRewardDto].
extension QuestRewardDtoPatterns on QuestRewardDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestRewardDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestRewardDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestRewardDto value)  $default,){
final _that = this;
switch (_that) {
case _QuestRewardDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestRewardDto value)?  $default,){
final _that = this;
switch (_that) {
case _QuestRewardDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int exp,  int gold,  List<QuestRewardItemDto> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestRewardDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int exp,  int gold,  List<QuestRewardItemDto> items)  $default,) {final _that = this;
switch (_that) {
case _QuestRewardDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int exp,  int gold,  List<QuestRewardItemDto> items)?  $default,) {final _that = this;
switch (_that) {
case _QuestRewardDto() when $default != null:
return $default(_that.exp,_that.gold,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuestRewardDto extends QuestRewardDto {
  const _QuestRewardDto({this.exp = 0, this.gold = 0, final  List<QuestRewardItemDto> items = const <QuestRewardItemDto>[]}): _items = items,super._();
  factory _QuestRewardDto.fromJson(Map<String, dynamic> json) => _$QuestRewardDtoFromJson(json);

@override@JsonKey() final  int exp;
@override@JsonKey() final  int gold;
 final  List<QuestRewardItemDto> _items;
@override@JsonKey() List<QuestRewardItemDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of QuestRewardDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestRewardDtoCopyWith<_QuestRewardDto> get copyWith => __$QuestRewardDtoCopyWithImpl<_QuestRewardDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestRewardDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestRewardDto&&(identical(other.exp, exp) || other.exp == exp)&&(identical(other.gold, gold) || other.gold == gold)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,exp,gold,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'QuestRewardDto(exp: $exp, gold: $gold, items: $items)';
}


}

/// @nodoc
abstract mixin class _$QuestRewardDtoCopyWith<$Res> implements $QuestRewardDtoCopyWith<$Res> {
  factory _$QuestRewardDtoCopyWith(_QuestRewardDto value, $Res Function(_QuestRewardDto) _then) = __$QuestRewardDtoCopyWithImpl;
@override @useResult
$Res call({
 int exp, int gold, List<QuestRewardItemDto> items
});




}
/// @nodoc
class __$QuestRewardDtoCopyWithImpl<$Res>
    implements _$QuestRewardDtoCopyWith<$Res> {
  __$QuestRewardDtoCopyWithImpl(this._self, this._then);

  final _QuestRewardDto _self;
  final $Res Function(_QuestRewardDto) _then;

/// Create a copy of QuestRewardDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? exp = null,Object? gold = null,Object? items = null,}) {
  return _then(_QuestRewardDto(
exp: null == exp ? _self.exp : exp // ignore: cast_nullable_to_non_nullable
as int,gold: null == gold ? _self.gold : gold // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<QuestRewardItemDto>,
  ));
}


}


/// @nodoc
mixin _$QuestProgressDto {

 int get kill;
/// Create a copy of QuestProgressDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestProgressDtoCopyWith<QuestProgressDto> get copyWith => _$QuestProgressDtoCopyWithImpl<QuestProgressDto>(this as QuestProgressDto, _$identity);

  /// Serializes this QuestProgressDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestProgressDto&&(identical(other.kill, kill) || other.kill == kill));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kill);

@override
String toString() {
  return 'QuestProgressDto(kill: $kill)';
}


}

/// @nodoc
abstract mixin class $QuestProgressDtoCopyWith<$Res>  {
  factory $QuestProgressDtoCopyWith(QuestProgressDto value, $Res Function(QuestProgressDto) _then) = _$QuestProgressDtoCopyWithImpl;
@useResult
$Res call({
 int kill
});




}
/// @nodoc
class _$QuestProgressDtoCopyWithImpl<$Res>
    implements $QuestProgressDtoCopyWith<$Res> {
  _$QuestProgressDtoCopyWithImpl(this._self, this._then);

  final QuestProgressDto _self;
  final $Res Function(QuestProgressDto) _then;

/// Create a copy of QuestProgressDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? kill = null,}) {
  return _then(_self.copyWith(
kill: null == kill ? _self.kill : kill // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [QuestProgressDto].
extension QuestProgressDtoPatterns on QuestProgressDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestProgressDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestProgressDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestProgressDto value)  $default,){
final _that = this;
switch (_that) {
case _QuestProgressDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestProgressDto value)?  $default,){
final _that = this;
switch (_that) {
case _QuestProgressDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int kill)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestProgressDto() when $default != null:
return $default(_that.kill);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int kill)  $default,) {final _that = this;
switch (_that) {
case _QuestProgressDto():
return $default(_that.kill);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int kill)?  $default,) {final _that = this;
switch (_that) {
case _QuestProgressDto() when $default != null:
return $default(_that.kill);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuestProgressDto implements QuestProgressDto {
  const _QuestProgressDto({this.kill = 0});
  factory _QuestProgressDto.fromJson(Map<String, dynamic> json) => _$QuestProgressDtoFromJson(json);

@override@JsonKey() final  int kill;

/// Create a copy of QuestProgressDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestProgressDtoCopyWith<_QuestProgressDto> get copyWith => __$QuestProgressDtoCopyWithImpl<_QuestProgressDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestProgressDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestProgressDto&&(identical(other.kill, kill) || other.kill == kill));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,kill);

@override
String toString() {
  return 'QuestProgressDto(kill: $kill)';
}


}

/// @nodoc
abstract mixin class _$QuestProgressDtoCopyWith<$Res> implements $QuestProgressDtoCopyWith<$Res> {
  factory _$QuestProgressDtoCopyWith(_QuestProgressDto value, $Res Function(_QuestProgressDto) _then) = __$QuestProgressDtoCopyWithImpl;
@override @useResult
$Res call({
 int kill
});




}
/// @nodoc
class __$QuestProgressDtoCopyWithImpl<$Res>
    implements _$QuestProgressDtoCopyWith<$Res> {
  __$QuestProgressDtoCopyWithImpl(this._self, this._then);

  final _QuestProgressDto _self;
  final $Res Function(_QuestProgressDto) _then;

/// Create a copy of QuestProgressDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? kill = null,}) {
  return _then(_QuestProgressDto(
kill: null == kill ? _self.kill : kill // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$QuestDto {

 String get id; String get nameKo; String get descriptionKo; int get minLevel; QuestObjectiveDto get objective; QuestRewardDto get rewards; String get status; QuestProgressDto get progress;
/// Create a copy of QuestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestDtoCopyWith<QuestDto> get copyWith => _$QuestDtoCopyWithImpl<QuestDto>(this as QuestDto, _$identity);

  /// Serializes this QuestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestDto&&(identical(other.id, id) || other.id == id)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo)&&(identical(other.descriptionKo, descriptionKo) || other.descriptionKo == descriptionKo)&&(identical(other.minLevel, minLevel) || other.minLevel == minLevel)&&(identical(other.objective, objective) || other.objective == objective)&&(identical(other.rewards, rewards) || other.rewards == rewards)&&(identical(other.status, status) || other.status == status)&&(identical(other.progress, progress) || other.progress == progress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameKo,descriptionKo,minLevel,objective,rewards,status,progress);

@override
String toString() {
  return 'QuestDto(id: $id, nameKo: $nameKo, descriptionKo: $descriptionKo, minLevel: $minLevel, objective: $objective, rewards: $rewards, status: $status, progress: $progress)';
}


}

/// @nodoc
abstract mixin class $QuestDtoCopyWith<$Res>  {
  factory $QuestDtoCopyWith(QuestDto value, $Res Function(QuestDto) _then) = _$QuestDtoCopyWithImpl;
@useResult
$Res call({
 String id, String nameKo, String descriptionKo, int minLevel, QuestObjectiveDto objective, QuestRewardDto rewards, String status, QuestProgressDto progress
});


$QuestObjectiveDtoCopyWith<$Res> get objective;$QuestRewardDtoCopyWith<$Res> get rewards;$QuestProgressDtoCopyWith<$Res> get progress;

}
/// @nodoc
class _$QuestDtoCopyWithImpl<$Res>
    implements $QuestDtoCopyWith<$Res> {
  _$QuestDtoCopyWithImpl(this._self, this._then);

  final QuestDto _self;
  final $Res Function(QuestDto) _then;

/// Create a copy of QuestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nameKo = null,Object? descriptionKo = null,Object? minLevel = null,Object? objective = null,Object? rewards = null,Object? status = null,Object? progress = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,descriptionKo: null == descriptionKo ? _self.descriptionKo : descriptionKo // ignore: cast_nullable_to_non_nullable
as String,minLevel: null == minLevel ? _self.minLevel : minLevel // ignore: cast_nullable_to_non_nullable
as int,objective: null == objective ? _self.objective : objective // ignore: cast_nullable_to_non_nullable
as QuestObjectiveDto,rewards: null == rewards ? _self.rewards : rewards // ignore: cast_nullable_to_non_nullable
as QuestRewardDto,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as QuestProgressDto,
  ));
}
/// Create a copy of QuestDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuestObjectiveDtoCopyWith<$Res> get objective {
  
  return $QuestObjectiveDtoCopyWith<$Res>(_self.objective, (value) {
    return _then(_self.copyWith(objective: value));
  });
}/// Create a copy of QuestDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuestRewardDtoCopyWith<$Res> get rewards {
  
  return $QuestRewardDtoCopyWith<$Res>(_self.rewards, (value) {
    return _then(_self.copyWith(rewards: value));
  });
}/// Create a copy of QuestDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuestProgressDtoCopyWith<$Res> get progress {
  
  return $QuestProgressDtoCopyWith<$Res>(_self.progress, (value) {
    return _then(_self.copyWith(progress: value));
  });
}
}


/// Adds pattern-matching-related methods to [QuestDto].
extension QuestDtoPatterns on QuestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestDto value)  $default,){
final _that = this;
switch (_that) {
case _QuestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestDto value)?  $default,){
final _that = this;
switch (_that) {
case _QuestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String nameKo,  String descriptionKo,  int minLevel,  QuestObjectiveDto objective,  QuestRewardDto rewards,  String status,  QuestProgressDto progress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestDto() when $default != null:
return $default(_that.id,_that.nameKo,_that.descriptionKo,_that.minLevel,_that.objective,_that.rewards,_that.status,_that.progress);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String nameKo,  String descriptionKo,  int minLevel,  QuestObjectiveDto objective,  QuestRewardDto rewards,  String status,  QuestProgressDto progress)  $default,) {final _that = this;
switch (_that) {
case _QuestDto():
return $default(_that.id,_that.nameKo,_that.descriptionKo,_that.minLevel,_that.objective,_that.rewards,_that.status,_that.progress);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String nameKo,  String descriptionKo,  int minLevel,  QuestObjectiveDto objective,  QuestRewardDto rewards,  String status,  QuestProgressDto progress)?  $default,) {final _that = this;
switch (_that) {
case _QuestDto() when $default != null:
return $default(_that.id,_that.nameKo,_that.descriptionKo,_that.minLevel,_that.objective,_that.rewards,_that.status,_that.progress);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuestDto extends QuestDto {
  const _QuestDto({required this.id, this.nameKo = '퀘스트', this.descriptionKo = '', this.minLevel = 1, this.objective = const QuestObjectiveDto(), this.rewards = const QuestRewardDto(), this.status = 'available', this.progress = const QuestProgressDto()}): super._();
  factory _QuestDto.fromJson(Map<String, dynamic> json) => _$QuestDtoFromJson(json);

@override final  String id;
@override@JsonKey() final  String nameKo;
@override@JsonKey() final  String descriptionKo;
@override@JsonKey() final  int minLevel;
@override@JsonKey() final  QuestObjectiveDto objective;
@override@JsonKey() final  QuestRewardDto rewards;
@override@JsonKey() final  String status;
@override@JsonKey() final  QuestProgressDto progress;

/// Create a copy of QuestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestDtoCopyWith<_QuestDto> get copyWith => __$QuestDtoCopyWithImpl<_QuestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestDto&&(identical(other.id, id) || other.id == id)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo)&&(identical(other.descriptionKo, descriptionKo) || other.descriptionKo == descriptionKo)&&(identical(other.minLevel, minLevel) || other.minLevel == minLevel)&&(identical(other.objective, objective) || other.objective == objective)&&(identical(other.rewards, rewards) || other.rewards == rewards)&&(identical(other.status, status) || other.status == status)&&(identical(other.progress, progress) || other.progress == progress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameKo,descriptionKo,minLevel,objective,rewards,status,progress);

@override
String toString() {
  return 'QuestDto(id: $id, nameKo: $nameKo, descriptionKo: $descriptionKo, minLevel: $minLevel, objective: $objective, rewards: $rewards, status: $status, progress: $progress)';
}


}

/// @nodoc
abstract mixin class _$QuestDtoCopyWith<$Res> implements $QuestDtoCopyWith<$Res> {
  factory _$QuestDtoCopyWith(_QuestDto value, $Res Function(_QuestDto) _then) = __$QuestDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String nameKo, String descriptionKo, int minLevel, QuestObjectiveDto objective, QuestRewardDto rewards, String status, QuestProgressDto progress
});


@override $QuestObjectiveDtoCopyWith<$Res> get objective;@override $QuestRewardDtoCopyWith<$Res> get rewards;@override $QuestProgressDtoCopyWith<$Res> get progress;

}
/// @nodoc
class __$QuestDtoCopyWithImpl<$Res>
    implements _$QuestDtoCopyWith<$Res> {
  __$QuestDtoCopyWithImpl(this._self, this._then);

  final _QuestDto _self;
  final $Res Function(_QuestDto) _then;

/// Create a copy of QuestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nameKo = null,Object? descriptionKo = null,Object? minLevel = null,Object? objective = null,Object? rewards = null,Object? status = null,Object? progress = null,}) {
  return _then(_QuestDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,descriptionKo: null == descriptionKo ? _self.descriptionKo : descriptionKo // ignore: cast_nullable_to_non_nullable
as String,minLevel: null == minLevel ? _self.minLevel : minLevel // ignore: cast_nullable_to_non_nullable
as int,objective: null == objective ? _self.objective : objective // ignore: cast_nullable_to_non_nullable
as QuestObjectiveDto,rewards: null == rewards ? _self.rewards : rewards // ignore: cast_nullable_to_non_nullable
as QuestRewardDto,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,progress: null == progress ? _self.progress : progress // ignore: cast_nullable_to_non_nullable
as QuestProgressDto,
  ));
}

/// Create a copy of QuestDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuestObjectiveDtoCopyWith<$Res> get objective {
  
  return $QuestObjectiveDtoCopyWith<$Res>(_self.objective, (value) {
    return _then(_self.copyWith(objective: value));
  });
}/// Create a copy of QuestDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuestRewardDtoCopyWith<$Res> get rewards {
  
  return $QuestRewardDtoCopyWith<$Res>(_self.rewards, (value) {
    return _then(_self.copyWith(rewards: value));
  });
}/// Create a copy of QuestDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuestProgressDtoCopyWith<$Res> get progress {
  
  return $QuestProgressDtoCopyWith<$Res>(_self.progress, (value) {
    return _then(_self.copyWith(progress: value));
  });
}
}


/// @nodoc
mixin _$QuestActionRequestDto {

 String get questId;
/// Create a copy of QuestActionRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestActionRequestDtoCopyWith<QuestActionRequestDto> get copyWith => _$QuestActionRequestDtoCopyWithImpl<QuestActionRequestDto>(this as QuestActionRequestDto, _$identity);

  /// Serializes this QuestActionRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestActionRequestDto&&(identical(other.questId, questId) || other.questId == questId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questId);

@override
String toString() {
  return 'QuestActionRequestDto(questId: $questId)';
}


}

/// @nodoc
abstract mixin class $QuestActionRequestDtoCopyWith<$Res>  {
  factory $QuestActionRequestDtoCopyWith(QuestActionRequestDto value, $Res Function(QuestActionRequestDto) _then) = _$QuestActionRequestDtoCopyWithImpl;
@useResult
$Res call({
 String questId
});




}
/// @nodoc
class _$QuestActionRequestDtoCopyWithImpl<$Res>
    implements $QuestActionRequestDtoCopyWith<$Res> {
  _$QuestActionRequestDtoCopyWithImpl(this._self, this._then);

  final QuestActionRequestDto _self;
  final $Res Function(QuestActionRequestDto) _then;

/// Create a copy of QuestActionRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? questId = null,}) {
  return _then(_self.copyWith(
questId: null == questId ? _self.questId : questId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [QuestActionRequestDto].
extension QuestActionRequestDtoPatterns on QuestActionRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestActionRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestActionRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestActionRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _QuestActionRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestActionRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _QuestActionRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String questId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestActionRequestDto() when $default != null:
return $default(_that.questId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String questId)  $default,) {final _that = this;
switch (_that) {
case _QuestActionRequestDto():
return $default(_that.questId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String questId)?  $default,) {final _that = this;
switch (_that) {
case _QuestActionRequestDto() when $default != null:
return $default(_that.questId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuestActionRequestDto implements QuestActionRequestDto {
  const _QuestActionRequestDto({required this.questId});
  factory _QuestActionRequestDto.fromJson(Map<String, dynamic> json) => _$QuestActionRequestDtoFromJson(json);

@override final  String questId;

/// Create a copy of QuestActionRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestActionRequestDtoCopyWith<_QuestActionRequestDto> get copyWith => __$QuestActionRequestDtoCopyWithImpl<_QuestActionRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestActionRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestActionRequestDto&&(identical(other.questId, questId) || other.questId == questId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questId);

@override
String toString() {
  return 'QuestActionRequestDto(questId: $questId)';
}


}

/// @nodoc
abstract mixin class _$QuestActionRequestDtoCopyWith<$Res> implements $QuestActionRequestDtoCopyWith<$Res> {
  factory _$QuestActionRequestDtoCopyWith(_QuestActionRequestDto value, $Res Function(_QuestActionRequestDto) _then) = __$QuestActionRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String questId
});




}
/// @nodoc
class __$QuestActionRequestDtoCopyWithImpl<$Res>
    implements _$QuestActionRequestDtoCopyWith<$Res> {
  __$QuestActionRequestDtoCopyWithImpl(this._self, this._then);

  final _QuestActionRequestDto _self;
  final $Res Function(_QuestActionRequestDto) _then;

/// Create a copy of QuestActionRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? questId = null,}) {
  return _then(_QuestActionRequestDto(
questId: null == questId ? _self.questId : questId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$QuestLevelUpDto {

 bool get leveledUp; int get newLevel; int get levelsGained;
/// Create a copy of QuestLevelUpDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestLevelUpDtoCopyWith<QuestLevelUpDto> get copyWith => _$QuestLevelUpDtoCopyWithImpl<QuestLevelUpDto>(this as QuestLevelUpDto, _$identity);

  /// Serializes this QuestLevelUpDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestLevelUpDto&&(identical(other.leveledUp, leveledUp) || other.leveledUp == leveledUp)&&(identical(other.newLevel, newLevel) || other.newLevel == newLevel)&&(identical(other.levelsGained, levelsGained) || other.levelsGained == levelsGained));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,leveledUp,newLevel,levelsGained);

@override
String toString() {
  return 'QuestLevelUpDto(leveledUp: $leveledUp, newLevel: $newLevel, levelsGained: $levelsGained)';
}


}

/// @nodoc
abstract mixin class $QuestLevelUpDtoCopyWith<$Res>  {
  factory $QuestLevelUpDtoCopyWith(QuestLevelUpDto value, $Res Function(QuestLevelUpDto) _then) = _$QuestLevelUpDtoCopyWithImpl;
@useResult
$Res call({
 bool leveledUp, int newLevel, int levelsGained
});




}
/// @nodoc
class _$QuestLevelUpDtoCopyWithImpl<$Res>
    implements $QuestLevelUpDtoCopyWith<$Res> {
  _$QuestLevelUpDtoCopyWithImpl(this._self, this._then);

  final QuestLevelUpDto _self;
  final $Res Function(QuestLevelUpDto) _then;

/// Create a copy of QuestLevelUpDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? leveledUp = null,Object? newLevel = null,Object? levelsGained = null,}) {
  return _then(_self.copyWith(
leveledUp: null == leveledUp ? _self.leveledUp : leveledUp // ignore: cast_nullable_to_non_nullable
as bool,newLevel: null == newLevel ? _self.newLevel : newLevel // ignore: cast_nullable_to_non_nullable
as int,levelsGained: null == levelsGained ? _self.levelsGained : levelsGained // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [QuestLevelUpDto].
extension QuestLevelUpDtoPatterns on QuestLevelUpDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestLevelUpDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestLevelUpDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestLevelUpDto value)  $default,){
final _that = this;
switch (_that) {
case _QuestLevelUpDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestLevelUpDto value)?  $default,){
final _that = this;
switch (_that) {
case _QuestLevelUpDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool leveledUp,  int newLevel,  int levelsGained)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestLevelUpDto() when $default != null:
return $default(_that.leveledUp,_that.newLevel,_that.levelsGained);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool leveledUp,  int newLevel,  int levelsGained)  $default,) {final _that = this;
switch (_that) {
case _QuestLevelUpDto():
return $default(_that.leveledUp,_that.newLevel,_that.levelsGained);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool leveledUp,  int newLevel,  int levelsGained)?  $default,) {final _that = this;
switch (_that) {
case _QuestLevelUpDto() when $default != null:
return $default(_that.leveledUp,_that.newLevel,_that.levelsGained);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuestLevelUpDto implements QuestLevelUpDto {
  const _QuestLevelUpDto({this.leveledUp = false, this.newLevel = 0, this.levelsGained = 0});
  factory _QuestLevelUpDto.fromJson(Map<String, dynamic> json) => _$QuestLevelUpDtoFromJson(json);

@override@JsonKey() final  bool leveledUp;
@override@JsonKey() final  int newLevel;
@override@JsonKey() final  int levelsGained;

/// Create a copy of QuestLevelUpDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestLevelUpDtoCopyWith<_QuestLevelUpDto> get copyWith => __$QuestLevelUpDtoCopyWithImpl<_QuestLevelUpDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestLevelUpDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestLevelUpDto&&(identical(other.leveledUp, leveledUp) || other.leveledUp == leveledUp)&&(identical(other.newLevel, newLevel) || other.newLevel == newLevel)&&(identical(other.levelsGained, levelsGained) || other.levelsGained == levelsGained));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,leveledUp,newLevel,levelsGained);

@override
String toString() {
  return 'QuestLevelUpDto(leveledUp: $leveledUp, newLevel: $newLevel, levelsGained: $levelsGained)';
}


}

/// @nodoc
abstract mixin class _$QuestLevelUpDtoCopyWith<$Res> implements $QuestLevelUpDtoCopyWith<$Res> {
  factory _$QuestLevelUpDtoCopyWith(_QuestLevelUpDto value, $Res Function(_QuestLevelUpDto) _then) = __$QuestLevelUpDtoCopyWithImpl;
@override @useResult
$Res call({
 bool leveledUp, int newLevel, int levelsGained
});




}
/// @nodoc
class __$QuestLevelUpDtoCopyWithImpl<$Res>
    implements _$QuestLevelUpDtoCopyWith<$Res> {
  __$QuestLevelUpDtoCopyWithImpl(this._self, this._then);

  final _QuestLevelUpDto _self;
  final $Res Function(_QuestLevelUpDto) _then;

/// Create a copy of QuestLevelUpDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? leveledUp = null,Object? newLevel = null,Object? levelsGained = null,}) {
  return _then(_QuestLevelUpDto(
leveledUp: null == leveledUp ? _self.leveledUp : leveledUp // ignore: cast_nullable_to_non_nullable
as bool,newLevel: null == newLevel ? _self.newLevel : newLevel // ignore: cast_nullable_to_non_nullable
as int,levelsGained: null == levelsGained ? _self.levelsGained : levelsGained // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$QuestClaimResponseDto {

 String get questId; int get exp; int get gold; List<QuestRewardItemDto> get items; QuestLevelUpDto get levelUp; int get totalGold; int get totalExp;
/// Create a copy of QuestClaimResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestClaimResponseDtoCopyWith<QuestClaimResponseDto> get copyWith => _$QuestClaimResponseDtoCopyWithImpl<QuestClaimResponseDto>(this as QuestClaimResponseDto, _$identity);

  /// Serializes this QuestClaimResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestClaimResponseDto&&(identical(other.questId, questId) || other.questId == questId)&&(identical(other.exp, exp) || other.exp == exp)&&(identical(other.gold, gold) || other.gold == gold)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.levelUp, levelUp) || other.levelUp == levelUp)&&(identical(other.totalGold, totalGold) || other.totalGold == totalGold)&&(identical(other.totalExp, totalExp) || other.totalExp == totalExp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questId,exp,gold,const DeepCollectionEquality().hash(items),levelUp,totalGold,totalExp);

@override
String toString() {
  return 'QuestClaimResponseDto(questId: $questId, exp: $exp, gold: $gold, items: $items, levelUp: $levelUp, totalGold: $totalGold, totalExp: $totalExp)';
}


}

/// @nodoc
abstract mixin class $QuestClaimResponseDtoCopyWith<$Res>  {
  factory $QuestClaimResponseDtoCopyWith(QuestClaimResponseDto value, $Res Function(QuestClaimResponseDto) _then) = _$QuestClaimResponseDtoCopyWithImpl;
@useResult
$Res call({
 String questId, int exp, int gold, List<QuestRewardItemDto> items, QuestLevelUpDto levelUp, int totalGold, int totalExp
});


$QuestLevelUpDtoCopyWith<$Res> get levelUp;

}
/// @nodoc
class _$QuestClaimResponseDtoCopyWithImpl<$Res>
    implements $QuestClaimResponseDtoCopyWith<$Res> {
  _$QuestClaimResponseDtoCopyWithImpl(this._self, this._then);

  final QuestClaimResponseDto _self;
  final $Res Function(QuestClaimResponseDto) _then;

/// Create a copy of QuestClaimResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? questId = null,Object? exp = null,Object? gold = null,Object? items = null,Object? levelUp = null,Object? totalGold = null,Object? totalExp = null,}) {
  return _then(_self.copyWith(
questId: null == questId ? _self.questId : questId // ignore: cast_nullable_to_non_nullable
as String,exp: null == exp ? _self.exp : exp // ignore: cast_nullable_to_non_nullable
as int,gold: null == gold ? _self.gold : gold // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<QuestRewardItemDto>,levelUp: null == levelUp ? _self.levelUp : levelUp // ignore: cast_nullable_to_non_nullable
as QuestLevelUpDto,totalGold: null == totalGold ? _self.totalGold : totalGold // ignore: cast_nullable_to_non_nullable
as int,totalExp: null == totalExp ? _self.totalExp : totalExp // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of QuestClaimResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuestLevelUpDtoCopyWith<$Res> get levelUp {
  
  return $QuestLevelUpDtoCopyWith<$Res>(_self.levelUp, (value) {
    return _then(_self.copyWith(levelUp: value));
  });
}
}


/// Adds pattern-matching-related methods to [QuestClaimResponseDto].
extension QuestClaimResponseDtoPatterns on QuestClaimResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestClaimResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestClaimResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestClaimResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _QuestClaimResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestClaimResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _QuestClaimResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String questId,  int exp,  int gold,  List<QuestRewardItemDto> items,  QuestLevelUpDto levelUp,  int totalGold,  int totalExp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestClaimResponseDto() when $default != null:
return $default(_that.questId,_that.exp,_that.gold,_that.items,_that.levelUp,_that.totalGold,_that.totalExp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String questId,  int exp,  int gold,  List<QuestRewardItemDto> items,  QuestLevelUpDto levelUp,  int totalGold,  int totalExp)  $default,) {final _that = this;
switch (_that) {
case _QuestClaimResponseDto():
return $default(_that.questId,_that.exp,_that.gold,_that.items,_that.levelUp,_that.totalGold,_that.totalExp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String questId,  int exp,  int gold,  List<QuestRewardItemDto> items,  QuestLevelUpDto levelUp,  int totalGold,  int totalExp)?  $default,) {final _that = this;
switch (_that) {
case _QuestClaimResponseDto() when $default != null:
return $default(_that.questId,_that.exp,_that.gold,_that.items,_that.levelUp,_that.totalGold,_that.totalExp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuestClaimResponseDto extends QuestClaimResponseDto {
  const _QuestClaimResponseDto({required this.questId, this.exp = 0, this.gold = 0, final  List<QuestRewardItemDto> items = const <QuestRewardItemDto>[], this.levelUp = const QuestLevelUpDto(), this.totalGold = 0, this.totalExp = 0}): _items = items,super._();
  factory _QuestClaimResponseDto.fromJson(Map<String, dynamic> json) => _$QuestClaimResponseDtoFromJson(json);

@override final  String questId;
@override@JsonKey() final  int exp;
@override@JsonKey() final  int gold;
 final  List<QuestRewardItemDto> _items;
@override@JsonKey() List<QuestRewardItemDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  QuestLevelUpDto levelUp;
@override@JsonKey() final  int totalGold;
@override@JsonKey() final  int totalExp;

/// Create a copy of QuestClaimResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestClaimResponseDtoCopyWith<_QuestClaimResponseDto> get copyWith => __$QuestClaimResponseDtoCopyWithImpl<_QuestClaimResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestClaimResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestClaimResponseDto&&(identical(other.questId, questId) || other.questId == questId)&&(identical(other.exp, exp) || other.exp == exp)&&(identical(other.gold, gold) || other.gold == gold)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.levelUp, levelUp) || other.levelUp == levelUp)&&(identical(other.totalGold, totalGold) || other.totalGold == totalGold)&&(identical(other.totalExp, totalExp) || other.totalExp == totalExp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,questId,exp,gold,const DeepCollectionEquality().hash(_items),levelUp,totalGold,totalExp);

@override
String toString() {
  return 'QuestClaimResponseDto(questId: $questId, exp: $exp, gold: $gold, items: $items, levelUp: $levelUp, totalGold: $totalGold, totalExp: $totalExp)';
}


}

/// @nodoc
abstract mixin class _$QuestClaimResponseDtoCopyWith<$Res> implements $QuestClaimResponseDtoCopyWith<$Res> {
  factory _$QuestClaimResponseDtoCopyWith(_QuestClaimResponseDto value, $Res Function(_QuestClaimResponseDto) _then) = __$QuestClaimResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String questId, int exp, int gold, List<QuestRewardItemDto> items, QuestLevelUpDto levelUp, int totalGold, int totalExp
});


@override $QuestLevelUpDtoCopyWith<$Res> get levelUp;

}
/// @nodoc
class __$QuestClaimResponseDtoCopyWithImpl<$Res>
    implements _$QuestClaimResponseDtoCopyWith<$Res> {
  __$QuestClaimResponseDtoCopyWithImpl(this._self, this._then);

  final _QuestClaimResponseDto _self;
  final $Res Function(_QuestClaimResponseDto) _then;

/// Create a copy of QuestClaimResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? questId = null,Object? exp = null,Object? gold = null,Object? items = null,Object? levelUp = null,Object? totalGold = null,Object? totalExp = null,}) {
  return _then(_QuestClaimResponseDto(
questId: null == questId ? _self.questId : questId // ignore: cast_nullable_to_non_nullable
as String,exp: null == exp ? _self.exp : exp // ignore: cast_nullable_to_non_nullable
as int,gold: null == gold ? _self.gold : gold // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<QuestRewardItemDto>,levelUp: null == levelUp ? _self.levelUp : levelUp // ignore: cast_nullable_to_non_nullable
as QuestLevelUpDto,totalGold: null == totalGold ? _self.totalGold : totalGold // ignore: cast_nullable_to_non_nullable
as int,totalExp: null == totalExp ? _self.totalExp : totalExp // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of QuestClaimResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuestLevelUpDtoCopyWith<$Res> get levelUp {
  
  return $QuestLevelUpDtoCopyWith<$Res>(_self.levelUp, (value) {
    return _then(_self.copyWith(levelUp: value));
  });
}
}

// dart format on
