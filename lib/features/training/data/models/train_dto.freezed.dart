// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'train_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProficiencyEnvelopeDto {

 Map<String, num> get data;
/// Create a copy of ProficiencyEnvelopeDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProficiencyEnvelopeDtoCopyWith<ProficiencyEnvelopeDto> get copyWith => _$ProficiencyEnvelopeDtoCopyWithImpl<ProficiencyEnvelopeDto>(this as ProficiencyEnvelopeDto, _$identity);

  /// Serializes this ProficiencyEnvelopeDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProficiencyEnvelopeDto&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ProficiencyEnvelopeDto(data: $data)';
}


}

/// @nodoc
abstract mixin class $ProficiencyEnvelopeDtoCopyWith<$Res>  {
  factory $ProficiencyEnvelopeDtoCopyWith(ProficiencyEnvelopeDto value, $Res Function(ProficiencyEnvelopeDto) _then) = _$ProficiencyEnvelopeDtoCopyWithImpl;
@useResult
$Res call({
 Map<String, num> data
});




}
/// @nodoc
class _$ProficiencyEnvelopeDtoCopyWithImpl<$Res>
    implements $ProficiencyEnvelopeDtoCopyWith<$Res> {
  _$ProficiencyEnvelopeDtoCopyWithImpl(this._self, this._then);

  final ProficiencyEnvelopeDto _self;
  final $Res Function(ProficiencyEnvelopeDto) _then;

/// Create a copy of ProficiencyEnvelopeDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, num>,
  ));
}

}


/// Adds pattern-matching-related methods to [ProficiencyEnvelopeDto].
extension ProficiencyEnvelopeDtoPatterns on ProficiencyEnvelopeDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProficiencyEnvelopeDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProficiencyEnvelopeDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProficiencyEnvelopeDto value)  $default,){
final _that = this;
switch (_that) {
case _ProficiencyEnvelopeDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProficiencyEnvelopeDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProficiencyEnvelopeDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, num> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProficiencyEnvelopeDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, num> data)  $default,) {final _that = this;
switch (_that) {
case _ProficiencyEnvelopeDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, num> data)?  $default,) {final _that = this;
switch (_that) {
case _ProficiencyEnvelopeDto() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProficiencyEnvelopeDto implements ProficiencyEnvelopeDto {
  const _ProficiencyEnvelopeDto({final  Map<String, num> data = const <String, num>{}}): _data = data;
  factory _ProficiencyEnvelopeDto.fromJson(Map<String, dynamic> json) => _$ProficiencyEnvelopeDtoFromJson(json);

 final  Map<String, num> _data;
@override@JsonKey() Map<String, num> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of ProficiencyEnvelopeDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProficiencyEnvelopeDtoCopyWith<_ProficiencyEnvelopeDto> get copyWith => __$ProficiencyEnvelopeDtoCopyWithImpl<_ProficiencyEnvelopeDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProficiencyEnvelopeDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProficiencyEnvelopeDto&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'ProficiencyEnvelopeDto(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ProficiencyEnvelopeDtoCopyWith<$Res> implements $ProficiencyEnvelopeDtoCopyWith<$Res> {
  factory _$ProficiencyEnvelopeDtoCopyWith(_ProficiencyEnvelopeDto value, $Res Function(_ProficiencyEnvelopeDto) _then) = __$ProficiencyEnvelopeDtoCopyWithImpl;
@override @useResult
$Res call({
 Map<String, num> data
});




}
/// @nodoc
class __$ProficiencyEnvelopeDtoCopyWithImpl<$Res>
    implements _$ProficiencyEnvelopeDtoCopyWith<$Res> {
  __$ProficiencyEnvelopeDtoCopyWithImpl(this._self, this._then);

  final _ProficiencyEnvelopeDto _self;
  final $Res Function(_ProficiencyEnvelopeDto) _then;

/// Create a copy of ProficiencyEnvelopeDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_ProficiencyEnvelopeDto(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, num>,
  ));
}


}


/// @nodoc
mixin _$TrainRequestDto {

 String get proficiencyType;
/// Create a copy of TrainRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrainRequestDtoCopyWith<TrainRequestDto> get copyWith => _$TrainRequestDtoCopyWithImpl<TrainRequestDto>(this as TrainRequestDto, _$identity);

  /// Serializes this TrainRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainRequestDto&&(identical(other.proficiencyType, proficiencyType) || other.proficiencyType == proficiencyType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,proficiencyType);

@override
String toString() {
  return 'TrainRequestDto(proficiencyType: $proficiencyType)';
}


}

/// @nodoc
abstract mixin class $TrainRequestDtoCopyWith<$Res>  {
  factory $TrainRequestDtoCopyWith(TrainRequestDto value, $Res Function(TrainRequestDto) _then) = _$TrainRequestDtoCopyWithImpl;
@useResult
$Res call({
 String proficiencyType
});




}
/// @nodoc
class _$TrainRequestDtoCopyWithImpl<$Res>
    implements $TrainRequestDtoCopyWith<$Res> {
  _$TrainRequestDtoCopyWithImpl(this._self, this._then);

  final TrainRequestDto _self;
  final $Res Function(TrainRequestDto) _then;

/// Create a copy of TrainRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? proficiencyType = null,}) {
  return _then(_self.copyWith(
proficiencyType: null == proficiencyType ? _self.proficiencyType : proficiencyType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TrainRequestDto].
extension TrainRequestDtoPatterns on TrainRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrainRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrainRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrainRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _TrainRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrainRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _TrainRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String proficiencyType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrainRequestDto() when $default != null:
return $default(_that.proficiencyType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String proficiencyType)  $default,) {final _that = this;
switch (_that) {
case _TrainRequestDto():
return $default(_that.proficiencyType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String proficiencyType)?  $default,) {final _that = this;
switch (_that) {
case _TrainRequestDto() when $default != null:
return $default(_that.proficiencyType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TrainRequestDto implements TrainRequestDto {
  const _TrainRequestDto({required this.proficiencyType});
  factory _TrainRequestDto.fromJson(Map<String, dynamic> json) => _$TrainRequestDtoFromJson(json);

@override final  String proficiencyType;

/// Create a copy of TrainRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrainRequestDtoCopyWith<_TrainRequestDto> get copyWith => __$TrainRequestDtoCopyWithImpl<_TrainRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrainRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrainRequestDto&&(identical(other.proficiencyType, proficiencyType) || other.proficiencyType == proficiencyType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,proficiencyType);

@override
String toString() {
  return 'TrainRequestDto(proficiencyType: $proficiencyType)';
}


}

/// @nodoc
abstract mixin class _$TrainRequestDtoCopyWith<$Res> implements $TrainRequestDtoCopyWith<$Res> {
  factory _$TrainRequestDtoCopyWith(_TrainRequestDto value, $Res Function(_TrainRequestDto) _then) = __$TrainRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String proficiencyType
});




}
/// @nodoc
class __$TrainRequestDtoCopyWithImpl<$Res>
    implements _$TrainRequestDtoCopyWith<$Res> {
  __$TrainRequestDtoCopyWithImpl(this._self, this._then);

  final _TrainRequestDto _self;
  final $Res Function(_TrainRequestDto) _then;

/// Create a copy of TrainRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? proficiencyType = null,}) {
  return _then(_TrainRequestDto(
proficiencyType: null == proficiencyType ? _self.proficiencyType : proficiencyType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TrainResponseDto {

 int get gold; String get type; int get value; int get cost; int get nextCost;
/// Create a copy of TrainResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrainResponseDtoCopyWith<TrainResponseDto> get copyWith => _$TrainResponseDtoCopyWithImpl<TrainResponseDto>(this as TrainResponseDto, _$identity);

  /// Serializes this TrainResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainResponseDto&&(identical(other.gold, gold) || other.gold == gold)&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.nextCost, nextCost) || other.nextCost == nextCost));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gold,type,value,cost,nextCost);

@override
String toString() {
  return 'TrainResponseDto(gold: $gold, type: $type, value: $value, cost: $cost, nextCost: $nextCost)';
}


}

/// @nodoc
abstract mixin class $TrainResponseDtoCopyWith<$Res>  {
  factory $TrainResponseDtoCopyWith(TrainResponseDto value, $Res Function(TrainResponseDto) _then) = _$TrainResponseDtoCopyWithImpl;
@useResult
$Res call({
 int gold, String type, int value, int cost, int nextCost
});




}
/// @nodoc
class _$TrainResponseDtoCopyWithImpl<$Res>
    implements $TrainResponseDtoCopyWith<$Res> {
  _$TrainResponseDtoCopyWithImpl(this._self, this._then);

  final TrainResponseDto _self;
  final $Res Function(TrainResponseDto) _then;

/// Create a copy of TrainResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gold = null,Object? type = null,Object? value = null,Object? cost = null,Object? nextCost = null,}) {
  return _then(_self.copyWith(
gold: null == gold ? _self.gold : gold // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as int,nextCost: null == nextCost ? _self.nextCost : nextCost // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TrainResponseDto].
extension TrainResponseDtoPatterns on TrainResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrainResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrainResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrainResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _TrainResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrainResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _TrainResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int gold,  String type,  int value,  int cost,  int nextCost)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrainResponseDto() when $default != null:
return $default(_that.gold,_that.type,_that.value,_that.cost,_that.nextCost);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int gold,  String type,  int value,  int cost,  int nextCost)  $default,) {final _that = this;
switch (_that) {
case _TrainResponseDto():
return $default(_that.gold,_that.type,_that.value,_that.cost,_that.nextCost);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int gold,  String type,  int value,  int cost,  int nextCost)?  $default,) {final _that = this;
switch (_that) {
case _TrainResponseDto() when $default != null:
return $default(_that.gold,_that.type,_that.value,_that.cost,_that.nextCost);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TrainResponseDto extends TrainResponseDto {
  const _TrainResponseDto({this.gold = 0, this.type = '', this.value = 0, this.cost = 0, this.nextCost = 0}): super._();
  factory _TrainResponseDto.fromJson(Map<String, dynamic> json) => _$TrainResponseDtoFromJson(json);

@override@JsonKey() final  int gold;
@override@JsonKey() final  String type;
@override@JsonKey() final  int value;
@override@JsonKey() final  int cost;
@override@JsonKey() final  int nextCost;

/// Create a copy of TrainResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrainResponseDtoCopyWith<_TrainResponseDto> get copyWith => __$TrainResponseDtoCopyWithImpl<_TrainResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrainResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrainResponseDto&&(identical(other.gold, gold) || other.gold == gold)&&(identical(other.type, type) || other.type == type)&&(identical(other.value, value) || other.value == value)&&(identical(other.cost, cost) || other.cost == cost)&&(identical(other.nextCost, nextCost) || other.nextCost == nextCost));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gold,type,value,cost,nextCost);

@override
String toString() {
  return 'TrainResponseDto(gold: $gold, type: $type, value: $value, cost: $cost, nextCost: $nextCost)';
}


}

/// @nodoc
abstract mixin class _$TrainResponseDtoCopyWith<$Res> implements $TrainResponseDtoCopyWith<$Res> {
  factory _$TrainResponseDtoCopyWith(_TrainResponseDto value, $Res Function(_TrainResponseDto) _then) = __$TrainResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 int gold, String type, int value, int cost, int nextCost
});




}
/// @nodoc
class __$TrainResponseDtoCopyWithImpl<$Res>
    implements _$TrainResponseDtoCopyWith<$Res> {
  __$TrainResponseDtoCopyWithImpl(this._self, this._then);

  final _TrainResponseDto _self;
  final $Res Function(_TrainResponseDto) _then;

/// Create a copy of TrainResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gold = null,Object? type = null,Object? value = null,Object? cost = null,Object? nextCost = null,}) {
  return _then(_TrainResponseDto(
gold: null == gold ? _self.gold : gold // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as int,cost: null == cost ? _self.cost : cost // ignore: cast_nullable_to_non_nullable
as int,nextCost: null == nextCost ? _self.nextCost : nextCost // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
