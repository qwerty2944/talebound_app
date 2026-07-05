// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BuyRequestDto {

 String get npcId; String get itemId; int get quantity;
/// Create a copy of BuyRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BuyRequestDtoCopyWith<BuyRequestDto> get copyWith => _$BuyRequestDtoCopyWithImpl<BuyRequestDto>(this as BuyRequestDto, _$identity);

  /// Serializes this BuyRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BuyRequestDto&&(identical(other.npcId, npcId) || other.npcId == npcId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,npcId,itemId,quantity);

@override
String toString() {
  return 'BuyRequestDto(npcId: $npcId, itemId: $itemId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $BuyRequestDtoCopyWith<$Res>  {
  factory $BuyRequestDtoCopyWith(BuyRequestDto value, $Res Function(BuyRequestDto) _then) = _$BuyRequestDtoCopyWithImpl;
@useResult
$Res call({
 String npcId, String itemId, int quantity
});




}
/// @nodoc
class _$BuyRequestDtoCopyWithImpl<$Res>
    implements $BuyRequestDtoCopyWith<$Res> {
  _$BuyRequestDtoCopyWithImpl(this._self, this._then);

  final BuyRequestDto _self;
  final $Res Function(BuyRequestDto) _then;

/// Create a copy of BuyRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? npcId = null,Object? itemId = null,Object? quantity = null,}) {
  return _then(_self.copyWith(
npcId: null == npcId ? _self.npcId : npcId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [BuyRequestDto].
extension BuyRequestDtoPatterns on BuyRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BuyRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BuyRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BuyRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _BuyRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BuyRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _BuyRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String npcId,  String itemId,  int quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BuyRequestDto() when $default != null:
return $default(_that.npcId,_that.itemId,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String npcId,  String itemId,  int quantity)  $default,) {final _that = this;
switch (_that) {
case _BuyRequestDto():
return $default(_that.npcId,_that.itemId,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String npcId,  String itemId,  int quantity)?  $default,) {final _that = this;
switch (_that) {
case _BuyRequestDto() when $default != null:
return $default(_that.npcId,_that.itemId,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BuyRequestDto implements BuyRequestDto {
  const _BuyRequestDto({required this.npcId, required this.itemId, required this.quantity});
  factory _BuyRequestDto.fromJson(Map<String, dynamic> json) => _$BuyRequestDtoFromJson(json);

@override final  String npcId;
@override final  String itemId;
@override final  int quantity;

/// Create a copy of BuyRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BuyRequestDtoCopyWith<_BuyRequestDto> get copyWith => __$BuyRequestDtoCopyWithImpl<_BuyRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BuyRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BuyRequestDto&&(identical(other.npcId, npcId) || other.npcId == npcId)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,npcId,itemId,quantity);

@override
String toString() {
  return 'BuyRequestDto(npcId: $npcId, itemId: $itemId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$BuyRequestDtoCopyWith<$Res> implements $BuyRequestDtoCopyWith<$Res> {
  factory _$BuyRequestDtoCopyWith(_BuyRequestDto value, $Res Function(_BuyRequestDto) _then) = __$BuyRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String npcId, String itemId, int quantity
});




}
/// @nodoc
class __$BuyRequestDtoCopyWithImpl<$Res>
    implements _$BuyRequestDtoCopyWith<$Res> {
  __$BuyRequestDtoCopyWithImpl(this._self, this._then);

  final _BuyRequestDto _self;
  final $Res Function(_BuyRequestDto) _then;

/// Create a copy of BuyRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? npcId = null,Object? itemId = null,Object? quantity = null,}) {
  return _then(_BuyRequestDto(
npcId: null == npcId ? _self.npcId : npcId // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$SellRequestDto {

 String get itemId; int get quantity;
/// Create a copy of SellRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellRequestDtoCopyWith<SellRequestDto> get copyWith => _$SellRequestDtoCopyWithImpl<SellRequestDto>(this as SellRequestDto, _$identity);

  /// Serializes this SellRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellRequestDto&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,quantity);

@override
String toString() {
  return 'SellRequestDto(itemId: $itemId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $SellRequestDtoCopyWith<$Res>  {
  factory $SellRequestDtoCopyWith(SellRequestDto value, $Res Function(SellRequestDto) _then) = _$SellRequestDtoCopyWithImpl;
@useResult
$Res call({
 String itemId, int quantity
});




}
/// @nodoc
class _$SellRequestDtoCopyWithImpl<$Res>
    implements $SellRequestDtoCopyWith<$Res> {
  _$SellRequestDtoCopyWithImpl(this._self, this._then);

  final SellRequestDto _self;
  final $Res Function(SellRequestDto) _then;

/// Create a copy of SellRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemId = null,Object? quantity = null,}) {
  return _then(_self.copyWith(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SellRequestDto].
extension SellRequestDtoPatterns on SellRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _SellRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _SellRequestDto() when $default != null:
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
case _SellRequestDto() when $default != null:
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
case _SellRequestDto():
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
case _SellRequestDto() when $default != null:
return $default(_that.itemId,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SellRequestDto implements SellRequestDto {
  const _SellRequestDto({required this.itemId, required this.quantity});
  factory _SellRequestDto.fromJson(Map<String, dynamic> json) => _$SellRequestDtoFromJson(json);

@override final  String itemId;
@override final  int quantity;

/// Create a copy of SellRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellRequestDtoCopyWith<_SellRequestDto> get copyWith => __$SellRequestDtoCopyWithImpl<_SellRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SellRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellRequestDto&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,quantity);

@override
String toString() {
  return 'SellRequestDto(itemId: $itemId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$SellRequestDtoCopyWith<$Res> implements $SellRequestDtoCopyWith<$Res> {
  factory _$SellRequestDtoCopyWith(_SellRequestDto value, $Res Function(_SellRequestDto) _then) = __$SellRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String itemId, int quantity
});




}
/// @nodoc
class __$SellRequestDtoCopyWithImpl<$Res>
    implements _$SellRequestDtoCopyWith<$Res> {
  __$SellRequestDtoCopyWithImpl(this._self, this._then);

  final _SellRequestDto _self;
  final $Res Function(_SellRequestDto) _then;

/// Create a copy of SellRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? quantity = null,}) {
  return _then(_SellRequestDto(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$BuyResponseDto {

 int get gold; String get itemId; int get quantity;
/// Create a copy of BuyResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BuyResponseDtoCopyWith<BuyResponseDto> get copyWith => _$BuyResponseDtoCopyWithImpl<BuyResponseDto>(this as BuyResponseDto, _$identity);

  /// Serializes this BuyResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BuyResponseDto&&(identical(other.gold, gold) || other.gold == gold)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gold,itemId,quantity);

@override
String toString() {
  return 'BuyResponseDto(gold: $gold, itemId: $itemId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $BuyResponseDtoCopyWith<$Res>  {
  factory $BuyResponseDtoCopyWith(BuyResponseDto value, $Res Function(BuyResponseDto) _then) = _$BuyResponseDtoCopyWithImpl;
@useResult
$Res call({
 int gold, String itemId, int quantity
});




}
/// @nodoc
class _$BuyResponseDtoCopyWithImpl<$Res>
    implements $BuyResponseDtoCopyWith<$Res> {
  _$BuyResponseDtoCopyWithImpl(this._self, this._then);

  final BuyResponseDto _self;
  final $Res Function(BuyResponseDto) _then;

/// Create a copy of BuyResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gold = null,Object? itemId = null,Object? quantity = null,}) {
  return _then(_self.copyWith(
gold: null == gold ? _self.gold : gold // ignore: cast_nullable_to_non_nullable
as int,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [BuyResponseDto].
extension BuyResponseDtoPatterns on BuyResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BuyResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BuyResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BuyResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _BuyResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BuyResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _BuyResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int gold,  String itemId,  int quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BuyResponseDto() when $default != null:
return $default(_that.gold,_that.itemId,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int gold,  String itemId,  int quantity)  $default,) {final _that = this;
switch (_that) {
case _BuyResponseDto():
return $default(_that.gold,_that.itemId,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int gold,  String itemId,  int quantity)?  $default,) {final _that = this;
switch (_that) {
case _BuyResponseDto() when $default != null:
return $default(_that.gold,_that.itemId,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BuyResponseDto extends BuyResponseDto {
  const _BuyResponseDto({this.gold = 0, this.itemId = '', this.quantity = 0}): super._();
  factory _BuyResponseDto.fromJson(Map<String, dynamic> json) => _$BuyResponseDtoFromJson(json);

@override@JsonKey() final  int gold;
@override@JsonKey() final  String itemId;
@override@JsonKey() final  int quantity;

/// Create a copy of BuyResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BuyResponseDtoCopyWith<_BuyResponseDto> get copyWith => __$BuyResponseDtoCopyWithImpl<_BuyResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BuyResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BuyResponseDto&&(identical(other.gold, gold) || other.gold == gold)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gold,itemId,quantity);

@override
String toString() {
  return 'BuyResponseDto(gold: $gold, itemId: $itemId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$BuyResponseDtoCopyWith<$Res> implements $BuyResponseDtoCopyWith<$Res> {
  factory _$BuyResponseDtoCopyWith(_BuyResponseDto value, $Res Function(_BuyResponseDto) _then) = __$BuyResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 int gold, String itemId, int quantity
});




}
/// @nodoc
class __$BuyResponseDtoCopyWithImpl<$Res>
    implements _$BuyResponseDtoCopyWith<$Res> {
  __$BuyResponseDtoCopyWithImpl(this._self, this._then);

  final _BuyResponseDto _self;
  final $Res Function(_BuyResponseDto) _then;

/// Create a copy of BuyResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gold = null,Object? itemId = null,Object? quantity = null,}) {
  return _then(_BuyResponseDto(
gold: null == gold ? _self.gold : gold // ignore: cast_nullable_to_non_nullable
as int,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$SellResponseDto {

 int get gold;
/// Create a copy of SellResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SellResponseDtoCopyWith<SellResponseDto> get copyWith => _$SellResponseDtoCopyWithImpl<SellResponseDto>(this as SellResponseDto, _$identity);

  /// Serializes this SellResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SellResponseDto&&(identical(other.gold, gold) || other.gold == gold));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gold);

@override
String toString() {
  return 'SellResponseDto(gold: $gold)';
}


}

/// @nodoc
abstract mixin class $SellResponseDtoCopyWith<$Res>  {
  factory $SellResponseDtoCopyWith(SellResponseDto value, $Res Function(SellResponseDto) _then) = _$SellResponseDtoCopyWithImpl;
@useResult
$Res call({
 int gold
});




}
/// @nodoc
class _$SellResponseDtoCopyWithImpl<$Res>
    implements $SellResponseDtoCopyWith<$Res> {
  _$SellResponseDtoCopyWithImpl(this._self, this._then);

  final SellResponseDto _self;
  final $Res Function(SellResponseDto) _then;

/// Create a copy of SellResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gold = null,}) {
  return _then(_self.copyWith(
gold: null == gold ? _self.gold : gold // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SellResponseDto].
extension SellResponseDtoPatterns on SellResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SellResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SellResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SellResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _SellResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SellResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _SellResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int gold)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SellResponseDto() when $default != null:
return $default(_that.gold);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int gold)  $default,) {final _that = this;
switch (_that) {
case _SellResponseDto():
return $default(_that.gold);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int gold)?  $default,) {final _that = this;
switch (_that) {
case _SellResponseDto() when $default != null:
return $default(_that.gold);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SellResponseDto extends SellResponseDto {
  const _SellResponseDto({this.gold = 0}): super._();
  factory _SellResponseDto.fromJson(Map<String, dynamic> json) => _$SellResponseDtoFromJson(json);

@override@JsonKey() final  int gold;

/// Create a copy of SellResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SellResponseDtoCopyWith<_SellResponseDto> get copyWith => __$SellResponseDtoCopyWithImpl<_SellResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SellResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SellResponseDto&&(identical(other.gold, gold) || other.gold == gold));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gold);

@override
String toString() {
  return 'SellResponseDto(gold: $gold)';
}


}

/// @nodoc
abstract mixin class _$SellResponseDtoCopyWith<$Res> implements $SellResponseDtoCopyWith<$Res> {
  factory _$SellResponseDtoCopyWith(_SellResponseDto value, $Res Function(_SellResponseDto) _then) = __$SellResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 int gold
});




}
/// @nodoc
class __$SellResponseDtoCopyWithImpl<$Res>
    implements _$SellResponseDtoCopyWith<$Res> {
  __$SellResponseDtoCopyWithImpl(this._self, this._then);

  final _SellResponseDto _self;
  final $Res Function(_SellResponseDto) _then;

/// Create a copy of SellResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gold = null,}) {
  return _then(_SellResponseDto(
gold: null == gold ? _self.gold : gold // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
