// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InventoryEnvelopeDto {

 InventoryResponseDto? get data;
/// Create a copy of InventoryEnvelopeDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryEnvelopeDtoCopyWith<InventoryEnvelopeDto> get copyWith => _$InventoryEnvelopeDtoCopyWithImpl<InventoryEnvelopeDto>(this as InventoryEnvelopeDto, _$identity);

  /// Serializes this InventoryEnvelopeDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryEnvelopeDto&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'InventoryEnvelopeDto(data: $data)';
}


}

/// @nodoc
abstract mixin class $InventoryEnvelopeDtoCopyWith<$Res>  {
  factory $InventoryEnvelopeDtoCopyWith(InventoryEnvelopeDto value, $Res Function(InventoryEnvelopeDto) _then) = _$InventoryEnvelopeDtoCopyWithImpl;
@useResult
$Res call({
 InventoryResponseDto? data
});


$InventoryResponseDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$InventoryEnvelopeDtoCopyWithImpl<$Res>
    implements $InventoryEnvelopeDtoCopyWith<$Res> {
  _$InventoryEnvelopeDtoCopyWithImpl(this._self, this._then);

  final InventoryEnvelopeDto _self;
  final $Res Function(InventoryEnvelopeDto) _then;

/// Create a copy of InventoryEnvelopeDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as InventoryResponseDto?,
  ));
}
/// Create a copy of InventoryEnvelopeDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InventoryResponseDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $InventoryResponseDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [InventoryEnvelopeDto].
extension InventoryEnvelopeDtoPatterns on InventoryEnvelopeDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryEnvelopeDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryEnvelopeDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryEnvelopeDto value)  $default,){
final _that = this;
switch (_that) {
case _InventoryEnvelopeDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryEnvelopeDto value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryEnvelopeDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( InventoryResponseDto? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryEnvelopeDto() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( InventoryResponseDto? data)  $default,) {final _that = this;
switch (_that) {
case _InventoryEnvelopeDto():
return $default(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( InventoryResponseDto? data)?  $default,) {final _that = this;
switch (_that) {
case _InventoryEnvelopeDto() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryEnvelopeDto implements InventoryEnvelopeDto {
  const _InventoryEnvelopeDto({this.data});
  factory _InventoryEnvelopeDto.fromJson(Map<String, dynamic> json) => _$InventoryEnvelopeDtoFromJson(json);

@override final  InventoryResponseDto? data;

/// Create a copy of InventoryEnvelopeDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryEnvelopeDtoCopyWith<_InventoryEnvelopeDto> get copyWith => __$InventoryEnvelopeDtoCopyWithImpl<_InventoryEnvelopeDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryEnvelopeDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryEnvelopeDto&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'InventoryEnvelopeDto(data: $data)';
}


}

/// @nodoc
abstract mixin class _$InventoryEnvelopeDtoCopyWith<$Res> implements $InventoryEnvelopeDtoCopyWith<$Res> {
  factory _$InventoryEnvelopeDtoCopyWith(_InventoryEnvelopeDto value, $Res Function(_InventoryEnvelopeDto) _then) = __$InventoryEnvelopeDtoCopyWithImpl;
@override @useResult
$Res call({
 InventoryResponseDto? data
});


@override $InventoryResponseDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$InventoryEnvelopeDtoCopyWithImpl<$Res>
    implements _$InventoryEnvelopeDtoCopyWith<$Res> {
  __$InventoryEnvelopeDtoCopyWithImpl(this._self, this._then);

  final _InventoryEnvelopeDto _self;
  final $Res Function(_InventoryEnvelopeDto) _then;

/// Create a copy of InventoryEnvelopeDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_InventoryEnvelopeDto(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as InventoryResponseDto?,
  ));
}

/// Create a copy of InventoryEnvelopeDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InventoryResponseDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $InventoryResponseDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$InventoryResponseDto {

 String? get id; String get inventoryType; int get maxSlots; List<InventorySlotItemDto?> get items;
/// Create a copy of InventoryResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryResponseDtoCopyWith<InventoryResponseDto> get copyWith => _$InventoryResponseDtoCopyWithImpl<InventoryResponseDto>(this as InventoryResponseDto, _$identity);

  /// Serializes this InventoryResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.inventoryType, inventoryType) || other.inventoryType == inventoryType)&&(identical(other.maxSlots, maxSlots) || other.maxSlots == maxSlots)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,inventoryType,maxSlots,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'InventoryResponseDto(id: $id, inventoryType: $inventoryType, maxSlots: $maxSlots, items: $items)';
}


}

/// @nodoc
abstract mixin class $InventoryResponseDtoCopyWith<$Res>  {
  factory $InventoryResponseDtoCopyWith(InventoryResponseDto value, $Res Function(InventoryResponseDto) _then) = _$InventoryResponseDtoCopyWithImpl;
@useResult
$Res call({
 String? id, String inventoryType, int maxSlots, List<InventorySlotItemDto?> items
});




}
/// @nodoc
class _$InventoryResponseDtoCopyWithImpl<$Res>
    implements $InventoryResponseDtoCopyWith<$Res> {
  _$InventoryResponseDtoCopyWithImpl(this._self, this._then);

  final InventoryResponseDto _self;
  final $Res Function(InventoryResponseDto) _then;

/// Create a copy of InventoryResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? inventoryType = null,Object? maxSlots = null,Object? items = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,inventoryType: null == inventoryType ? _self.inventoryType : inventoryType // ignore: cast_nullable_to_non_nullable
as String,maxSlots: null == maxSlots ? _self.maxSlots : maxSlots // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<InventorySlotItemDto?>,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryResponseDto].
extension InventoryResponseDtoPatterns on InventoryResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _InventoryResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String inventoryType,  int maxSlots,  List<InventorySlotItemDto?> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryResponseDto() when $default != null:
return $default(_that.id,_that.inventoryType,_that.maxSlots,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String inventoryType,  int maxSlots,  List<InventorySlotItemDto?> items)  $default,) {final _that = this;
switch (_that) {
case _InventoryResponseDto():
return $default(_that.id,_that.inventoryType,_that.maxSlots,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String inventoryType,  int maxSlots,  List<InventorySlotItemDto?> items)?  $default,) {final _that = this;
switch (_that) {
case _InventoryResponseDto() when $default != null:
return $default(_that.id,_that.inventoryType,_that.maxSlots,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryResponseDto implements InventoryResponseDto {
  const _InventoryResponseDto({this.id, this.inventoryType = 'personal', this.maxSlots = 20, final  List<InventorySlotItemDto?> items = const <InventorySlotItemDto?>[]}): _items = items;
  factory _InventoryResponseDto.fromJson(Map<String, dynamic> json) => _$InventoryResponseDtoFromJson(json);

@override final  String? id;
@override@JsonKey() final  String inventoryType;
@override@JsonKey() final  int maxSlots;
 final  List<InventorySlotItemDto?> _items;
@override@JsonKey() List<InventorySlotItemDto?> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of InventoryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryResponseDtoCopyWith<_InventoryResponseDto> get copyWith => __$InventoryResponseDtoCopyWithImpl<_InventoryResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.inventoryType, inventoryType) || other.inventoryType == inventoryType)&&(identical(other.maxSlots, maxSlots) || other.maxSlots == maxSlots)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,inventoryType,maxSlots,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'InventoryResponseDto(id: $id, inventoryType: $inventoryType, maxSlots: $maxSlots, items: $items)';
}


}

/// @nodoc
abstract mixin class _$InventoryResponseDtoCopyWith<$Res> implements $InventoryResponseDtoCopyWith<$Res> {
  factory _$InventoryResponseDtoCopyWith(_InventoryResponseDto value, $Res Function(_InventoryResponseDto) _then) = __$InventoryResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id, String inventoryType, int maxSlots, List<InventorySlotItemDto?> items
});




}
/// @nodoc
class __$InventoryResponseDtoCopyWithImpl<$Res>
    implements _$InventoryResponseDtoCopyWith<$Res> {
  __$InventoryResponseDtoCopyWithImpl(this._self, this._then);

  final _InventoryResponseDto _self;
  final $Res Function(_InventoryResponseDto) _then;

/// Create a copy of InventoryResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? inventoryType = null,Object? maxSlots = null,Object? items = null,}) {
  return _then(_InventoryResponseDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,inventoryType: null == inventoryType ? _self.inventoryType : inventoryType // ignore: cast_nullable_to_non_nullable
as String,maxSlots: null == maxSlots ? _self.maxSlots : maxSlots // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<InventorySlotItemDto?>,
  ));
}


}


/// @nodoc
mixin _$InventorySlotItemDto {

 int get slot; String get itemId; String get itemType; int get quantity; String? get acquiredAt;
/// Create a copy of InventorySlotItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventorySlotItemDtoCopyWith<InventorySlotItemDto> get copyWith => _$InventorySlotItemDtoCopyWithImpl<InventorySlotItemDto>(this as InventorySlotItemDto, _$identity);

  /// Serializes this InventorySlotItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventorySlotItemDto&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemType, itemType) || other.itemType == itemType)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.acquiredAt, acquiredAt) || other.acquiredAt == acquiredAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slot,itemId,itemType,quantity,acquiredAt);

@override
String toString() {
  return 'InventorySlotItemDto(slot: $slot, itemId: $itemId, itemType: $itemType, quantity: $quantity, acquiredAt: $acquiredAt)';
}


}

/// @nodoc
abstract mixin class $InventorySlotItemDtoCopyWith<$Res>  {
  factory $InventorySlotItemDtoCopyWith(InventorySlotItemDto value, $Res Function(InventorySlotItemDto) _then) = _$InventorySlotItemDtoCopyWithImpl;
@useResult
$Res call({
 int slot, String itemId, String itemType, int quantity, String? acquiredAt
});




}
/// @nodoc
class _$InventorySlotItemDtoCopyWithImpl<$Res>
    implements $InventorySlotItemDtoCopyWith<$Res> {
  _$InventorySlotItemDtoCopyWithImpl(this._self, this._then);

  final InventorySlotItemDto _self;
  final $Res Function(InventorySlotItemDto) _then;

/// Create a copy of InventorySlotItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slot = null,Object? itemId = null,Object? itemType = null,Object? quantity = null,Object? acquiredAt = freezed,}) {
  return _then(_self.copyWith(
slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,itemType: null == itemType ? _self.itemType : itemType // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,acquiredAt: freezed == acquiredAt ? _self.acquiredAt : acquiredAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [InventorySlotItemDto].
extension InventorySlotItemDtoPatterns on InventorySlotItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventorySlotItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventorySlotItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventorySlotItemDto value)  $default,){
final _that = this;
switch (_that) {
case _InventorySlotItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventorySlotItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _InventorySlotItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int slot,  String itemId,  String itemType,  int quantity,  String? acquiredAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventorySlotItemDto() when $default != null:
return $default(_that.slot,_that.itemId,_that.itemType,_that.quantity,_that.acquiredAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int slot,  String itemId,  String itemType,  int quantity,  String? acquiredAt)  $default,) {final _that = this;
switch (_that) {
case _InventorySlotItemDto():
return $default(_that.slot,_that.itemId,_that.itemType,_that.quantity,_that.acquiredAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int slot,  String itemId,  String itemType,  int quantity,  String? acquiredAt)?  $default,) {final _that = this;
switch (_that) {
case _InventorySlotItemDto() when $default != null:
return $default(_that.slot,_that.itemId,_that.itemType,_that.quantity,_that.acquiredAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventorySlotItemDto implements InventorySlotItemDto {
  const _InventorySlotItemDto({this.slot = 0, this.itemId = '', this.itemType = 'misc', this.quantity = 1, this.acquiredAt});
  factory _InventorySlotItemDto.fromJson(Map<String, dynamic> json) => _$InventorySlotItemDtoFromJson(json);

@override@JsonKey() final  int slot;
@override@JsonKey() final  String itemId;
@override@JsonKey() final  String itemType;
@override@JsonKey() final  int quantity;
@override final  String? acquiredAt;

/// Create a copy of InventorySlotItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventorySlotItemDtoCopyWith<_InventorySlotItemDto> get copyWith => __$InventorySlotItemDtoCopyWithImpl<_InventorySlotItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventorySlotItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventorySlotItemDto&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.itemType, itemType) || other.itemType == itemType)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.acquiredAt, acquiredAt) || other.acquiredAt == acquiredAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slot,itemId,itemType,quantity,acquiredAt);

@override
String toString() {
  return 'InventorySlotItemDto(slot: $slot, itemId: $itemId, itemType: $itemType, quantity: $quantity, acquiredAt: $acquiredAt)';
}


}

/// @nodoc
abstract mixin class _$InventorySlotItemDtoCopyWith<$Res> implements $InventorySlotItemDtoCopyWith<$Res> {
  factory _$InventorySlotItemDtoCopyWith(_InventorySlotItemDto value, $Res Function(_InventorySlotItemDto) _then) = __$InventorySlotItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int slot, String itemId, String itemType, int quantity, String? acquiredAt
});




}
/// @nodoc
class __$InventorySlotItemDtoCopyWithImpl<$Res>
    implements _$InventorySlotItemDtoCopyWith<$Res> {
  __$InventorySlotItemDtoCopyWithImpl(this._self, this._then);

  final _InventorySlotItemDto _self;
  final $Res Function(_InventorySlotItemDto) _then;

/// Create a copy of InventorySlotItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slot = null,Object? itemId = null,Object? itemType = null,Object? quantity = null,Object? acquiredAt = freezed,}) {
  return _then(_InventorySlotItemDto(
slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,itemType: null == itemType ? _self.itemType : itemType // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,acquiredAt: freezed == acquiredAt ? _self.acquiredAt : acquiredAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
