// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'heal_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HealRequestDto {

 String get npcId; int get injuryIndex;
/// Create a copy of HealRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealRequestDtoCopyWith<HealRequestDto> get copyWith => _$HealRequestDtoCopyWithImpl<HealRequestDto>(this as HealRequestDto, _$identity);

  /// Serializes this HealRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealRequestDto&&(identical(other.npcId, npcId) || other.npcId == npcId)&&(identical(other.injuryIndex, injuryIndex) || other.injuryIndex == injuryIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,npcId,injuryIndex);

@override
String toString() {
  return 'HealRequestDto(npcId: $npcId, injuryIndex: $injuryIndex)';
}


}

/// @nodoc
abstract mixin class $HealRequestDtoCopyWith<$Res>  {
  factory $HealRequestDtoCopyWith(HealRequestDto value, $Res Function(HealRequestDto) _then) = _$HealRequestDtoCopyWithImpl;
@useResult
$Res call({
 String npcId, int injuryIndex
});




}
/// @nodoc
class _$HealRequestDtoCopyWithImpl<$Res>
    implements $HealRequestDtoCopyWith<$Res> {
  _$HealRequestDtoCopyWithImpl(this._self, this._then);

  final HealRequestDto _self;
  final $Res Function(HealRequestDto) _then;

/// Create a copy of HealRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? npcId = null,Object? injuryIndex = null,}) {
  return _then(_self.copyWith(
npcId: null == npcId ? _self.npcId : npcId // ignore: cast_nullable_to_non_nullable
as String,injuryIndex: null == injuryIndex ? _self.injuryIndex : injuryIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [HealRequestDto].
extension HealRequestDtoPatterns on HealRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _HealRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _HealRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String npcId,  int injuryIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealRequestDto() when $default != null:
return $default(_that.npcId,_that.injuryIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String npcId,  int injuryIndex)  $default,) {final _that = this;
switch (_that) {
case _HealRequestDto():
return $default(_that.npcId,_that.injuryIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String npcId,  int injuryIndex)?  $default,) {final _that = this;
switch (_that) {
case _HealRequestDto() when $default != null:
return $default(_that.npcId,_that.injuryIndex);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealRequestDto implements HealRequestDto {
  const _HealRequestDto({required this.npcId, required this.injuryIndex});
  factory _HealRequestDto.fromJson(Map<String, dynamic> json) => _$HealRequestDtoFromJson(json);

@override final  String npcId;
@override final  int injuryIndex;

/// Create a copy of HealRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealRequestDtoCopyWith<_HealRequestDto> get copyWith => __$HealRequestDtoCopyWithImpl<_HealRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealRequestDto&&(identical(other.npcId, npcId) || other.npcId == npcId)&&(identical(other.injuryIndex, injuryIndex) || other.injuryIndex == injuryIndex));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,npcId,injuryIndex);

@override
String toString() {
  return 'HealRequestDto(npcId: $npcId, injuryIndex: $injuryIndex)';
}


}

/// @nodoc
abstract mixin class _$HealRequestDtoCopyWith<$Res> implements $HealRequestDtoCopyWith<$Res> {
  factory _$HealRequestDtoCopyWith(_HealRequestDto value, $Res Function(_HealRequestDto) _then) = __$HealRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String npcId, int injuryIndex
});




}
/// @nodoc
class __$HealRequestDtoCopyWithImpl<$Res>
    implements _$HealRequestDtoCopyWith<$Res> {
  __$HealRequestDtoCopyWithImpl(this._self, this._then);

  final _HealRequestDto _self;
  final $Res Function(_HealRequestDto) _then;

/// Create a copy of HealRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? npcId = null,Object? injuryIndex = null,}) {
  return _then(_HealRequestDto(
npcId: null == npcId ? _self.npcId : npcId // ignore: cast_nullable_to_non_nullable
as String,injuryIndex: null == injuryIndex ? _self.injuryIndex : injuryIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$HealEnvelopeDto {

 HealResultDto? get data;
/// Create a copy of HealEnvelopeDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealEnvelopeDtoCopyWith<HealEnvelopeDto> get copyWith => _$HealEnvelopeDtoCopyWithImpl<HealEnvelopeDto>(this as HealEnvelopeDto, _$identity);

  /// Serializes this HealEnvelopeDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealEnvelopeDto&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'HealEnvelopeDto(data: $data)';
}


}

/// @nodoc
abstract mixin class $HealEnvelopeDtoCopyWith<$Res>  {
  factory $HealEnvelopeDtoCopyWith(HealEnvelopeDto value, $Res Function(HealEnvelopeDto) _then) = _$HealEnvelopeDtoCopyWithImpl;
@useResult
$Res call({
 HealResultDto? data
});


$HealResultDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$HealEnvelopeDtoCopyWithImpl<$Res>
    implements $HealEnvelopeDtoCopyWith<$Res> {
  _$HealEnvelopeDtoCopyWithImpl(this._self, this._then);

  final HealEnvelopeDto _self;
  final $Res Function(HealEnvelopeDto) _then;

/// Create a copy of HealEnvelopeDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as HealResultDto?,
  ));
}
/// Create a copy of HealEnvelopeDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealResultDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $HealResultDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [HealEnvelopeDto].
extension HealEnvelopeDtoPatterns on HealEnvelopeDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealEnvelopeDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealEnvelopeDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealEnvelopeDto value)  $default,){
final _that = this;
switch (_that) {
case _HealEnvelopeDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealEnvelopeDto value)?  $default,){
final _that = this;
switch (_that) {
case _HealEnvelopeDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( HealResultDto? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealEnvelopeDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( HealResultDto? data)  $default,) {final _that = this;
switch (_that) {
case _HealEnvelopeDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( HealResultDto? data)?  $default,) {final _that = this;
switch (_that) {
case _HealEnvelopeDto() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealEnvelopeDto implements HealEnvelopeDto {
  const _HealEnvelopeDto({this.data});
  factory _HealEnvelopeDto.fromJson(Map<String, dynamic> json) => _$HealEnvelopeDtoFromJson(json);

@override final  HealResultDto? data;

/// Create a copy of HealEnvelopeDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealEnvelopeDtoCopyWith<_HealEnvelopeDto> get copyWith => __$HealEnvelopeDtoCopyWithImpl<_HealEnvelopeDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealEnvelopeDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealEnvelopeDto&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'HealEnvelopeDto(data: $data)';
}


}

/// @nodoc
abstract mixin class _$HealEnvelopeDtoCopyWith<$Res> implements $HealEnvelopeDtoCopyWith<$Res> {
  factory _$HealEnvelopeDtoCopyWith(_HealEnvelopeDto value, $Res Function(_HealEnvelopeDto) _then) = __$HealEnvelopeDtoCopyWithImpl;
@override @useResult
$Res call({
 HealResultDto? data
});


@override $HealResultDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$HealEnvelopeDtoCopyWithImpl<$Res>
    implements _$HealEnvelopeDtoCopyWith<$Res> {
  __$HealEnvelopeDtoCopyWithImpl(this._self, this._then);

  final _HealEnvelopeDto _self;
  final $Res Function(_HealEnvelopeDto) _then;

/// Create a copy of HealEnvelopeDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_HealEnvelopeDto(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as HealResultDto?,
  ));
}

/// Create a copy of HealEnvelopeDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealResultDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $HealResultDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$HealResultDto {

 bool get success;@JsonKey(name: 'remaining_gold') int get remainingGold; String? get message;
/// Create a copy of HealResultDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealResultDtoCopyWith<HealResultDto> get copyWith => _$HealResultDtoCopyWithImpl<HealResultDto>(this as HealResultDto, _$identity);

  /// Serializes this HealResultDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealResultDto&&(identical(other.success, success) || other.success == success)&&(identical(other.remainingGold, remainingGold) || other.remainingGold == remainingGold)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,remainingGold,message);

@override
String toString() {
  return 'HealResultDto(success: $success, remainingGold: $remainingGold, message: $message)';
}


}

/// @nodoc
abstract mixin class $HealResultDtoCopyWith<$Res>  {
  factory $HealResultDtoCopyWith(HealResultDto value, $Res Function(HealResultDto) _then) = _$HealResultDtoCopyWithImpl;
@useResult
$Res call({
 bool success,@JsonKey(name: 'remaining_gold') int remainingGold, String? message
});




}
/// @nodoc
class _$HealResultDtoCopyWithImpl<$Res>
    implements $HealResultDtoCopyWith<$Res> {
  _$HealResultDtoCopyWithImpl(this._self, this._then);

  final HealResultDto _self;
  final $Res Function(HealResultDto) _then;

/// Create a copy of HealResultDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? remainingGold = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,remainingGold: null == remainingGold ? _self.remainingGold : remainingGold // ignore: cast_nullable_to_non_nullable
as int,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [HealResultDto].
extension HealResultDtoPatterns on HealResultDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealResultDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealResultDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealResultDto value)  $default,){
final _that = this;
switch (_that) {
case _HealResultDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealResultDto value)?  $default,){
final _that = this;
switch (_that) {
case _HealResultDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success, @JsonKey(name: 'remaining_gold')  int remainingGold,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealResultDto() when $default != null:
return $default(_that.success,_that.remainingGold,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success, @JsonKey(name: 'remaining_gold')  int remainingGold,  String? message)  $default,) {final _that = this;
switch (_that) {
case _HealResultDto():
return $default(_that.success,_that.remainingGold,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success, @JsonKey(name: 'remaining_gold')  int remainingGold,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _HealResultDto() when $default != null:
return $default(_that.success,_that.remainingGold,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealResultDto extends HealResultDto {
  const _HealResultDto({this.success = false, @JsonKey(name: 'remaining_gold') this.remainingGold = 0, this.message}): super._();
  factory _HealResultDto.fromJson(Map<String, dynamic> json) => _$HealResultDtoFromJson(json);

@override@JsonKey() final  bool success;
@override@JsonKey(name: 'remaining_gold') final  int remainingGold;
@override final  String? message;

/// Create a copy of HealResultDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealResultDtoCopyWith<_HealResultDto> get copyWith => __$HealResultDtoCopyWithImpl<_HealResultDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealResultDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealResultDto&&(identical(other.success, success) || other.success == success)&&(identical(other.remainingGold, remainingGold) || other.remainingGold == remainingGold)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,remainingGold,message);

@override
String toString() {
  return 'HealResultDto(success: $success, remainingGold: $remainingGold, message: $message)';
}


}

/// @nodoc
abstract mixin class _$HealResultDtoCopyWith<$Res> implements $HealResultDtoCopyWith<$Res> {
  factory _$HealResultDtoCopyWith(_HealResultDto value, $Res Function(_HealResultDto) _then) = __$HealResultDtoCopyWithImpl;
@override @useResult
$Res call({
 bool success,@JsonKey(name: 'remaining_gold') int remainingGold, String? message
});




}
/// @nodoc
class __$HealResultDtoCopyWithImpl<$Res>
    implements _$HealResultDtoCopyWith<$Res> {
  __$HealResultDtoCopyWithImpl(this._self, this._then);

  final _HealResultDto _self;
  final $Res Function(_HealResultDto) _then;

/// Create a copy of HealResultDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? remainingGold = null,Object? message = freezed,}) {
  return _then(_HealResultDto(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,remainingGold: null == remainingGold ? _self.remainingGold : remainingGold // ignore: cast_nullable_to_non_nullable
as int,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
