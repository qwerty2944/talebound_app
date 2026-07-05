// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dungeon_run_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DungeonStartRequestDto {

 String get dungeonId;
/// Create a copy of DungeonStartRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DungeonStartRequestDtoCopyWith<DungeonStartRequestDto> get copyWith => _$DungeonStartRequestDtoCopyWithImpl<DungeonStartRequestDto>(this as DungeonStartRequestDto, _$identity);

  /// Serializes this DungeonStartRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DungeonStartRequestDto&&(identical(other.dungeonId, dungeonId) || other.dungeonId == dungeonId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dungeonId);

@override
String toString() {
  return 'DungeonStartRequestDto(dungeonId: $dungeonId)';
}


}

/// @nodoc
abstract mixin class $DungeonStartRequestDtoCopyWith<$Res>  {
  factory $DungeonStartRequestDtoCopyWith(DungeonStartRequestDto value, $Res Function(DungeonStartRequestDto) _then) = _$DungeonStartRequestDtoCopyWithImpl;
@useResult
$Res call({
 String dungeonId
});




}
/// @nodoc
class _$DungeonStartRequestDtoCopyWithImpl<$Res>
    implements $DungeonStartRequestDtoCopyWith<$Res> {
  _$DungeonStartRequestDtoCopyWithImpl(this._self, this._then);

  final DungeonStartRequestDto _self;
  final $Res Function(DungeonStartRequestDto) _then;

/// Create a copy of DungeonStartRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dungeonId = null,}) {
  return _then(_self.copyWith(
dungeonId: null == dungeonId ? _self.dungeonId : dungeonId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DungeonStartRequestDto].
extension DungeonStartRequestDtoPatterns on DungeonStartRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DungeonStartRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DungeonStartRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DungeonStartRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _DungeonStartRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DungeonStartRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _DungeonStartRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String dungeonId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DungeonStartRequestDto() when $default != null:
return $default(_that.dungeonId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String dungeonId)  $default,) {final _that = this;
switch (_that) {
case _DungeonStartRequestDto():
return $default(_that.dungeonId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String dungeonId)?  $default,) {final _that = this;
switch (_that) {
case _DungeonStartRequestDto() when $default != null:
return $default(_that.dungeonId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DungeonStartRequestDto implements DungeonStartRequestDto {
  const _DungeonStartRequestDto({required this.dungeonId});
  factory _DungeonStartRequestDto.fromJson(Map<String, dynamic> json) => _$DungeonStartRequestDtoFromJson(json);

@override final  String dungeonId;

/// Create a copy of DungeonStartRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DungeonStartRequestDtoCopyWith<_DungeonStartRequestDto> get copyWith => __$DungeonStartRequestDtoCopyWithImpl<_DungeonStartRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DungeonStartRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DungeonStartRequestDto&&(identical(other.dungeonId, dungeonId) || other.dungeonId == dungeonId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dungeonId);

@override
String toString() {
  return 'DungeonStartRequestDto(dungeonId: $dungeonId)';
}


}

/// @nodoc
abstract mixin class _$DungeonStartRequestDtoCopyWith<$Res> implements $DungeonStartRequestDtoCopyWith<$Res> {
  factory _$DungeonStartRequestDtoCopyWith(_DungeonStartRequestDto value, $Res Function(_DungeonStartRequestDto) _then) = __$DungeonStartRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String dungeonId
});




}
/// @nodoc
class __$DungeonStartRequestDtoCopyWithImpl<$Res>
    implements _$DungeonStartRequestDtoCopyWith<$Res> {
  __$DungeonStartRequestDtoCopyWithImpl(this._self, this._then);

  final _DungeonStartRequestDto _self;
  final $Res Function(_DungeonStartRequestDto) _then;

/// Create a copy of DungeonStartRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dungeonId = null,}) {
  return _then(_DungeonStartRequestDto(
dungeonId: null == dungeonId ? _self.dungeonId : dungeonId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$DungeonMonsterDto {

 String get id; int get level;
/// Create a copy of DungeonMonsterDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DungeonMonsterDtoCopyWith<DungeonMonsterDto> get copyWith => _$DungeonMonsterDtoCopyWithImpl<DungeonMonsterDto>(this as DungeonMonsterDto, _$identity);

  /// Serializes this DungeonMonsterDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DungeonMonsterDto&&(identical(other.id, id) || other.id == id)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,level);

@override
String toString() {
  return 'DungeonMonsterDto(id: $id, level: $level)';
}


}

/// @nodoc
abstract mixin class $DungeonMonsterDtoCopyWith<$Res>  {
  factory $DungeonMonsterDtoCopyWith(DungeonMonsterDto value, $Res Function(DungeonMonsterDto) _then) = _$DungeonMonsterDtoCopyWithImpl;
@useResult
$Res call({
 String id, int level
});




}
/// @nodoc
class _$DungeonMonsterDtoCopyWithImpl<$Res>
    implements $DungeonMonsterDtoCopyWith<$Res> {
  _$DungeonMonsterDtoCopyWithImpl(this._self, this._then);

  final DungeonMonsterDto _self;
  final $Res Function(DungeonMonsterDto) _then;

/// Create a copy of DungeonMonsterDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? level = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DungeonMonsterDto].
extension DungeonMonsterDtoPatterns on DungeonMonsterDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DungeonMonsterDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DungeonMonsterDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DungeonMonsterDto value)  $default,){
final _that = this;
switch (_that) {
case _DungeonMonsterDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DungeonMonsterDto value)?  $default,){
final _that = this;
switch (_that) {
case _DungeonMonsterDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int level)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DungeonMonsterDto() when $default != null:
return $default(_that.id,_that.level);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int level)  $default,) {final _that = this;
switch (_that) {
case _DungeonMonsterDto():
return $default(_that.id,_that.level);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int level)?  $default,) {final _that = this;
switch (_that) {
case _DungeonMonsterDto() when $default != null:
return $default(_that.id,_that.level);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DungeonMonsterDto implements DungeonMonsterDto {
  const _DungeonMonsterDto({required this.id, this.level = 1});
  factory _DungeonMonsterDto.fromJson(Map<String, dynamic> json) => _$DungeonMonsterDtoFromJson(json);

@override final  String id;
@override@JsonKey() final  int level;

/// Create a copy of DungeonMonsterDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DungeonMonsterDtoCopyWith<_DungeonMonsterDto> get copyWith => __$DungeonMonsterDtoCopyWithImpl<_DungeonMonsterDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DungeonMonsterDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DungeonMonsterDto&&(identical(other.id, id) || other.id == id)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,level);

@override
String toString() {
  return 'DungeonMonsterDto(id: $id, level: $level)';
}


}

/// @nodoc
abstract mixin class _$DungeonMonsterDtoCopyWith<$Res> implements $DungeonMonsterDtoCopyWith<$Res> {
  factory _$DungeonMonsterDtoCopyWith(_DungeonMonsterDto value, $Res Function(_DungeonMonsterDto) _then) = __$DungeonMonsterDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, int level
});




}
/// @nodoc
class __$DungeonMonsterDtoCopyWithImpl<$Res>
    implements _$DungeonMonsterDtoCopyWith<$Res> {
  __$DungeonMonsterDtoCopyWithImpl(this._self, this._then);

  final _DungeonMonsterDto _self;
  final $Res Function(_DungeonMonsterDto) _then;

/// Create a copy of DungeonMonsterDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? level = null,}) {
  return _then(_DungeonMonsterDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$DungeonStartResponseDto {

 int get wave; int get totalWaves; DungeonMonsterDto get monster; String get battleToken; String get runToken;
/// Create a copy of DungeonStartResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DungeonStartResponseDtoCopyWith<DungeonStartResponseDto> get copyWith => _$DungeonStartResponseDtoCopyWithImpl<DungeonStartResponseDto>(this as DungeonStartResponseDto, _$identity);

  /// Serializes this DungeonStartResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DungeonStartResponseDto&&(identical(other.wave, wave) || other.wave == wave)&&(identical(other.totalWaves, totalWaves) || other.totalWaves == totalWaves)&&(identical(other.monster, monster) || other.monster == monster)&&(identical(other.battleToken, battleToken) || other.battleToken == battleToken)&&(identical(other.runToken, runToken) || other.runToken == runToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,wave,totalWaves,monster,battleToken,runToken);

@override
String toString() {
  return 'DungeonStartResponseDto(wave: $wave, totalWaves: $totalWaves, monster: $monster, battleToken: $battleToken, runToken: $runToken)';
}


}

/// @nodoc
abstract mixin class $DungeonStartResponseDtoCopyWith<$Res>  {
  factory $DungeonStartResponseDtoCopyWith(DungeonStartResponseDto value, $Res Function(DungeonStartResponseDto) _then) = _$DungeonStartResponseDtoCopyWithImpl;
@useResult
$Res call({
 int wave, int totalWaves, DungeonMonsterDto monster, String battleToken, String runToken
});


$DungeonMonsterDtoCopyWith<$Res> get monster;

}
/// @nodoc
class _$DungeonStartResponseDtoCopyWithImpl<$Res>
    implements $DungeonStartResponseDtoCopyWith<$Res> {
  _$DungeonStartResponseDtoCopyWithImpl(this._self, this._then);

  final DungeonStartResponseDto _self;
  final $Res Function(DungeonStartResponseDto) _then;

/// Create a copy of DungeonStartResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? wave = null,Object? totalWaves = null,Object? monster = null,Object? battleToken = null,Object? runToken = null,}) {
  return _then(_self.copyWith(
wave: null == wave ? _self.wave : wave // ignore: cast_nullable_to_non_nullable
as int,totalWaves: null == totalWaves ? _self.totalWaves : totalWaves // ignore: cast_nullable_to_non_nullable
as int,monster: null == monster ? _self.monster : monster // ignore: cast_nullable_to_non_nullable
as DungeonMonsterDto,battleToken: null == battleToken ? _self.battleToken : battleToken // ignore: cast_nullable_to_non_nullable
as String,runToken: null == runToken ? _self.runToken : runToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of DungeonStartResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DungeonMonsterDtoCopyWith<$Res> get monster {
  
  return $DungeonMonsterDtoCopyWith<$Res>(_self.monster, (value) {
    return _then(_self.copyWith(monster: value));
  });
}
}


/// Adds pattern-matching-related methods to [DungeonStartResponseDto].
extension DungeonStartResponseDtoPatterns on DungeonStartResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DungeonStartResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DungeonStartResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DungeonStartResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _DungeonStartResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DungeonStartResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _DungeonStartResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int wave,  int totalWaves,  DungeonMonsterDto monster,  String battleToken,  String runToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DungeonStartResponseDto() when $default != null:
return $default(_that.wave,_that.totalWaves,_that.monster,_that.battleToken,_that.runToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int wave,  int totalWaves,  DungeonMonsterDto monster,  String battleToken,  String runToken)  $default,) {final _that = this;
switch (_that) {
case _DungeonStartResponseDto():
return $default(_that.wave,_that.totalWaves,_that.monster,_that.battleToken,_that.runToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int wave,  int totalWaves,  DungeonMonsterDto monster,  String battleToken,  String runToken)?  $default,) {final _that = this;
switch (_that) {
case _DungeonStartResponseDto() when $default != null:
return $default(_that.wave,_that.totalWaves,_that.monster,_that.battleToken,_that.runToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DungeonStartResponseDto extends DungeonStartResponseDto {
  const _DungeonStartResponseDto({this.wave = 0, this.totalWaves = 1, required this.monster, required this.battleToken, required this.runToken}): super._();
  factory _DungeonStartResponseDto.fromJson(Map<String, dynamic> json) => _$DungeonStartResponseDtoFromJson(json);

@override@JsonKey() final  int wave;
@override@JsonKey() final  int totalWaves;
@override final  DungeonMonsterDto monster;
@override final  String battleToken;
@override final  String runToken;

/// Create a copy of DungeonStartResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DungeonStartResponseDtoCopyWith<_DungeonStartResponseDto> get copyWith => __$DungeonStartResponseDtoCopyWithImpl<_DungeonStartResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DungeonStartResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DungeonStartResponseDto&&(identical(other.wave, wave) || other.wave == wave)&&(identical(other.totalWaves, totalWaves) || other.totalWaves == totalWaves)&&(identical(other.monster, monster) || other.monster == monster)&&(identical(other.battleToken, battleToken) || other.battleToken == battleToken)&&(identical(other.runToken, runToken) || other.runToken == runToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,wave,totalWaves,monster,battleToken,runToken);

@override
String toString() {
  return 'DungeonStartResponseDto(wave: $wave, totalWaves: $totalWaves, monster: $monster, battleToken: $battleToken, runToken: $runToken)';
}


}

/// @nodoc
abstract mixin class _$DungeonStartResponseDtoCopyWith<$Res> implements $DungeonStartResponseDtoCopyWith<$Res> {
  factory _$DungeonStartResponseDtoCopyWith(_DungeonStartResponseDto value, $Res Function(_DungeonStartResponseDto) _then) = __$DungeonStartResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 int wave, int totalWaves, DungeonMonsterDto monster, String battleToken, String runToken
});


@override $DungeonMonsterDtoCopyWith<$Res> get monster;

}
/// @nodoc
class __$DungeonStartResponseDtoCopyWithImpl<$Res>
    implements _$DungeonStartResponseDtoCopyWith<$Res> {
  __$DungeonStartResponseDtoCopyWithImpl(this._self, this._then);

  final _DungeonStartResponseDto _self;
  final $Res Function(_DungeonStartResponseDto) _then;

/// Create a copy of DungeonStartResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? wave = null,Object? totalWaves = null,Object? monster = null,Object? battleToken = null,Object? runToken = null,}) {
  return _then(_DungeonStartResponseDto(
wave: null == wave ? _self.wave : wave // ignore: cast_nullable_to_non_nullable
as int,totalWaves: null == totalWaves ? _self.totalWaves : totalWaves // ignore: cast_nullable_to_non_nullable
as int,monster: null == monster ? _self.monster : monster // ignore: cast_nullable_to_non_nullable
as DungeonMonsterDto,battleToken: null == battleToken ? _self.battleToken : battleToken // ignore: cast_nullable_to_non_nullable
as String,runToken: null == runToken ? _self.runToken : runToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of DungeonStartResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DungeonMonsterDtoCopyWith<$Res> get monster {
  
  return $DungeonMonsterDtoCopyWith<$Res>(_self.monster, (value) {
    return _then(_self.copyWith(monster: value));
  });
}
}


/// @nodoc
mixin _$DungeonAdvanceRequestDto {

 String get runToken; String get battleToken; int get currentHp; int get currentMp;
/// Create a copy of DungeonAdvanceRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DungeonAdvanceRequestDtoCopyWith<DungeonAdvanceRequestDto> get copyWith => _$DungeonAdvanceRequestDtoCopyWithImpl<DungeonAdvanceRequestDto>(this as DungeonAdvanceRequestDto, _$identity);

  /// Serializes this DungeonAdvanceRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DungeonAdvanceRequestDto&&(identical(other.runToken, runToken) || other.runToken == runToken)&&(identical(other.battleToken, battleToken) || other.battleToken == battleToken)&&(identical(other.currentHp, currentHp) || other.currentHp == currentHp)&&(identical(other.currentMp, currentMp) || other.currentMp == currentMp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,runToken,battleToken,currentHp,currentMp);

@override
String toString() {
  return 'DungeonAdvanceRequestDto(runToken: $runToken, battleToken: $battleToken, currentHp: $currentHp, currentMp: $currentMp)';
}


}

/// @nodoc
abstract mixin class $DungeonAdvanceRequestDtoCopyWith<$Res>  {
  factory $DungeonAdvanceRequestDtoCopyWith(DungeonAdvanceRequestDto value, $Res Function(DungeonAdvanceRequestDto) _then) = _$DungeonAdvanceRequestDtoCopyWithImpl;
@useResult
$Res call({
 String runToken, String battleToken, int currentHp, int currentMp
});




}
/// @nodoc
class _$DungeonAdvanceRequestDtoCopyWithImpl<$Res>
    implements $DungeonAdvanceRequestDtoCopyWith<$Res> {
  _$DungeonAdvanceRequestDtoCopyWithImpl(this._self, this._then);

  final DungeonAdvanceRequestDto _self;
  final $Res Function(DungeonAdvanceRequestDto) _then;

/// Create a copy of DungeonAdvanceRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? runToken = null,Object? battleToken = null,Object? currentHp = null,Object? currentMp = null,}) {
  return _then(_self.copyWith(
runToken: null == runToken ? _self.runToken : runToken // ignore: cast_nullable_to_non_nullable
as String,battleToken: null == battleToken ? _self.battleToken : battleToken // ignore: cast_nullable_to_non_nullable
as String,currentHp: null == currentHp ? _self.currentHp : currentHp // ignore: cast_nullable_to_non_nullable
as int,currentMp: null == currentMp ? _self.currentMp : currentMp // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DungeonAdvanceRequestDto].
extension DungeonAdvanceRequestDtoPatterns on DungeonAdvanceRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DungeonAdvanceRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DungeonAdvanceRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DungeonAdvanceRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _DungeonAdvanceRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DungeonAdvanceRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _DungeonAdvanceRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String runToken,  String battleToken,  int currentHp,  int currentMp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DungeonAdvanceRequestDto() when $default != null:
return $default(_that.runToken,_that.battleToken,_that.currentHp,_that.currentMp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String runToken,  String battleToken,  int currentHp,  int currentMp)  $default,) {final _that = this;
switch (_that) {
case _DungeonAdvanceRequestDto():
return $default(_that.runToken,_that.battleToken,_that.currentHp,_that.currentMp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String runToken,  String battleToken,  int currentHp,  int currentMp)?  $default,) {final _that = this;
switch (_that) {
case _DungeonAdvanceRequestDto() when $default != null:
return $default(_that.runToken,_that.battleToken,_that.currentHp,_that.currentMp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DungeonAdvanceRequestDto implements DungeonAdvanceRequestDto {
  const _DungeonAdvanceRequestDto({required this.runToken, required this.battleToken, required this.currentHp, required this.currentMp});
  factory _DungeonAdvanceRequestDto.fromJson(Map<String, dynamic> json) => _$DungeonAdvanceRequestDtoFromJson(json);

@override final  String runToken;
@override final  String battleToken;
@override final  int currentHp;
@override final  int currentMp;

/// Create a copy of DungeonAdvanceRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DungeonAdvanceRequestDtoCopyWith<_DungeonAdvanceRequestDto> get copyWith => __$DungeonAdvanceRequestDtoCopyWithImpl<_DungeonAdvanceRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DungeonAdvanceRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DungeonAdvanceRequestDto&&(identical(other.runToken, runToken) || other.runToken == runToken)&&(identical(other.battleToken, battleToken) || other.battleToken == battleToken)&&(identical(other.currentHp, currentHp) || other.currentHp == currentHp)&&(identical(other.currentMp, currentMp) || other.currentMp == currentMp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,runToken,battleToken,currentHp,currentMp);

@override
String toString() {
  return 'DungeonAdvanceRequestDto(runToken: $runToken, battleToken: $battleToken, currentHp: $currentHp, currentMp: $currentMp)';
}


}

/// @nodoc
abstract mixin class _$DungeonAdvanceRequestDtoCopyWith<$Res> implements $DungeonAdvanceRequestDtoCopyWith<$Res> {
  factory _$DungeonAdvanceRequestDtoCopyWith(_DungeonAdvanceRequestDto value, $Res Function(_DungeonAdvanceRequestDto) _then) = __$DungeonAdvanceRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String runToken, String battleToken, int currentHp, int currentMp
});




}
/// @nodoc
class __$DungeonAdvanceRequestDtoCopyWithImpl<$Res>
    implements _$DungeonAdvanceRequestDtoCopyWith<$Res> {
  __$DungeonAdvanceRequestDtoCopyWithImpl(this._self, this._then);

  final _DungeonAdvanceRequestDto _self;
  final $Res Function(_DungeonAdvanceRequestDto) _then;

/// Create a copy of DungeonAdvanceRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? runToken = null,Object? battleToken = null,Object? currentHp = null,Object? currentMp = null,}) {
  return _then(_DungeonAdvanceRequestDto(
runToken: null == runToken ? _self.runToken : runToken // ignore: cast_nullable_to_non_nullable
as String,battleToken: null == battleToken ? _self.battleToken : battleToken // ignore: cast_nullable_to_non_nullable
as String,currentHp: null == currentHp ? _self.currentHp : currentHp // ignore: cast_nullable_to_non_nullable
as int,currentMp: null == currentMp ? _self.currentMp : currentMp // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$WaveRewardDto {

 int get exp; int get gold; List<DungeonRewardItemDto> get drops;
/// Create a copy of WaveRewardDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WaveRewardDtoCopyWith<WaveRewardDto> get copyWith => _$WaveRewardDtoCopyWithImpl<WaveRewardDto>(this as WaveRewardDto, _$identity);

  /// Serializes this WaveRewardDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WaveRewardDto&&(identical(other.exp, exp) || other.exp == exp)&&(identical(other.gold, gold) || other.gold == gold)&&const DeepCollectionEquality().equals(other.drops, drops));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,exp,gold,const DeepCollectionEquality().hash(drops));

@override
String toString() {
  return 'WaveRewardDto(exp: $exp, gold: $gold, drops: $drops)';
}


}

/// @nodoc
abstract mixin class $WaveRewardDtoCopyWith<$Res>  {
  factory $WaveRewardDtoCopyWith(WaveRewardDto value, $Res Function(WaveRewardDto) _then) = _$WaveRewardDtoCopyWithImpl;
@useResult
$Res call({
 int exp, int gold, List<DungeonRewardItemDto> drops
});




}
/// @nodoc
class _$WaveRewardDtoCopyWithImpl<$Res>
    implements $WaveRewardDtoCopyWith<$Res> {
  _$WaveRewardDtoCopyWithImpl(this._self, this._then);

  final WaveRewardDto _self;
  final $Res Function(WaveRewardDto) _then;

/// Create a copy of WaveRewardDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? exp = null,Object? gold = null,Object? drops = null,}) {
  return _then(_self.copyWith(
exp: null == exp ? _self.exp : exp // ignore: cast_nullable_to_non_nullable
as int,gold: null == gold ? _self.gold : gold // ignore: cast_nullable_to_non_nullable
as int,drops: null == drops ? _self.drops : drops // ignore: cast_nullable_to_non_nullable
as List<DungeonRewardItemDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [WaveRewardDto].
extension WaveRewardDtoPatterns on WaveRewardDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WaveRewardDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WaveRewardDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WaveRewardDto value)  $default,){
final _that = this;
switch (_that) {
case _WaveRewardDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WaveRewardDto value)?  $default,){
final _that = this;
switch (_that) {
case _WaveRewardDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int exp,  int gold,  List<DungeonRewardItemDto> drops)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WaveRewardDto() when $default != null:
return $default(_that.exp,_that.gold,_that.drops);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int exp,  int gold,  List<DungeonRewardItemDto> drops)  $default,) {final _that = this;
switch (_that) {
case _WaveRewardDto():
return $default(_that.exp,_that.gold,_that.drops);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int exp,  int gold,  List<DungeonRewardItemDto> drops)?  $default,) {final _that = this;
switch (_that) {
case _WaveRewardDto() when $default != null:
return $default(_that.exp,_that.gold,_that.drops);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WaveRewardDto extends WaveRewardDto {
  const _WaveRewardDto({this.exp = 0, this.gold = 0, final  List<DungeonRewardItemDto> drops = const <DungeonRewardItemDto>[]}): _drops = drops,super._();
  factory _WaveRewardDto.fromJson(Map<String, dynamic> json) => _$WaveRewardDtoFromJson(json);

@override@JsonKey() final  int exp;
@override@JsonKey() final  int gold;
 final  List<DungeonRewardItemDto> _drops;
@override@JsonKey() List<DungeonRewardItemDto> get drops {
  if (_drops is EqualUnmodifiableListView) return _drops;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_drops);
}


/// Create a copy of WaveRewardDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WaveRewardDtoCopyWith<_WaveRewardDto> get copyWith => __$WaveRewardDtoCopyWithImpl<_WaveRewardDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WaveRewardDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WaveRewardDto&&(identical(other.exp, exp) || other.exp == exp)&&(identical(other.gold, gold) || other.gold == gold)&&const DeepCollectionEquality().equals(other._drops, _drops));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,exp,gold,const DeepCollectionEquality().hash(_drops));

@override
String toString() {
  return 'WaveRewardDto(exp: $exp, gold: $gold, drops: $drops)';
}


}

/// @nodoc
abstract mixin class _$WaveRewardDtoCopyWith<$Res> implements $WaveRewardDtoCopyWith<$Res> {
  factory _$WaveRewardDtoCopyWith(_WaveRewardDto value, $Res Function(_WaveRewardDto) _then) = __$WaveRewardDtoCopyWithImpl;
@override @useResult
$Res call({
 int exp, int gold, List<DungeonRewardItemDto> drops
});




}
/// @nodoc
class __$WaveRewardDtoCopyWithImpl<$Res>
    implements _$WaveRewardDtoCopyWith<$Res> {
  __$WaveRewardDtoCopyWithImpl(this._self, this._then);

  final _WaveRewardDto _self;
  final $Res Function(_WaveRewardDto) _then;

/// Create a copy of WaveRewardDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? exp = null,Object? gold = null,Object? drops = null,}) {
  return _then(_WaveRewardDto(
exp: null == exp ? _self.exp : exp // ignore: cast_nullable_to_non_nullable
as int,gold: null == gold ? _self.gold : gold // ignore: cast_nullable_to_non_nullable
as int,drops: null == drops ? _self._drops : drops // ignore: cast_nullable_to_non_nullable
as List<DungeonRewardItemDto>,
  ));
}


}


/// @nodoc
mixin _$DungeonClearRewardDto {

 int get exp; int get gold; List<DungeonRewardItemDto> get items;
/// Create a copy of DungeonClearRewardDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DungeonClearRewardDtoCopyWith<DungeonClearRewardDto> get copyWith => _$DungeonClearRewardDtoCopyWithImpl<DungeonClearRewardDto>(this as DungeonClearRewardDto, _$identity);

  /// Serializes this DungeonClearRewardDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DungeonClearRewardDto&&(identical(other.exp, exp) || other.exp == exp)&&(identical(other.gold, gold) || other.gold == gold)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,exp,gold,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'DungeonClearRewardDto(exp: $exp, gold: $gold, items: $items)';
}


}

/// @nodoc
abstract mixin class $DungeonClearRewardDtoCopyWith<$Res>  {
  factory $DungeonClearRewardDtoCopyWith(DungeonClearRewardDto value, $Res Function(DungeonClearRewardDto) _then) = _$DungeonClearRewardDtoCopyWithImpl;
@useResult
$Res call({
 int exp, int gold, List<DungeonRewardItemDto> items
});




}
/// @nodoc
class _$DungeonClearRewardDtoCopyWithImpl<$Res>
    implements $DungeonClearRewardDtoCopyWith<$Res> {
  _$DungeonClearRewardDtoCopyWithImpl(this._self, this._then);

  final DungeonClearRewardDto _self;
  final $Res Function(DungeonClearRewardDto) _then;

/// Create a copy of DungeonClearRewardDto
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


/// Adds pattern-matching-related methods to [DungeonClearRewardDto].
extension DungeonClearRewardDtoPatterns on DungeonClearRewardDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DungeonClearRewardDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DungeonClearRewardDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DungeonClearRewardDto value)  $default,){
final _that = this;
switch (_that) {
case _DungeonClearRewardDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DungeonClearRewardDto value)?  $default,){
final _that = this;
switch (_that) {
case _DungeonClearRewardDto() when $default != null:
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
case _DungeonClearRewardDto() when $default != null:
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
case _DungeonClearRewardDto():
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
case _DungeonClearRewardDto() when $default != null:
return $default(_that.exp,_that.gold,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DungeonClearRewardDto implements DungeonClearRewardDto {
  const _DungeonClearRewardDto({this.exp = 0, this.gold = 0, final  List<DungeonRewardItemDto> items = const <DungeonRewardItemDto>[]}): _items = items;
  factory _DungeonClearRewardDto.fromJson(Map<String, dynamic> json) => _$DungeonClearRewardDtoFromJson(json);

@override@JsonKey() final  int exp;
@override@JsonKey() final  int gold;
 final  List<DungeonRewardItemDto> _items;
@override@JsonKey() List<DungeonRewardItemDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of DungeonClearRewardDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DungeonClearRewardDtoCopyWith<_DungeonClearRewardDto> get copyWith => __$DungeonClearRewardDtoCopyWithImpl<_DungeonClearRewardDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DungeonClearRewardDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DungeonClearRewardDto&&(identical(other.exp, exp) || other.exp == exp)&&(identical(other.gold, gold) || other.gold == gold)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,exp,gold,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'DungeonClearRewardDto(exp: $exp, gold: $gold, items: $items)';
}


}

/// @nodoc
abstract mixin class _$DungeonClearRewardDtoCopyWith<$Res> implements $DungeonClearRewardDtoCopyWith<$Res> {
  factory _$DungeonClearRewardDtoCopyWith(_DungeonClearRewardDto value, $Res Function(_DungeonClearRewardDto) _then) = __$DungeonClearRewardDtoCopyWithImpl;
@override @useResult
$Res call({
 int exp, int gold, List<DungeonRewardItemDto> items
});




}
/// @nodoc
class __$DungeonClearRewardDtoCopyWithImpl<$Res>
    implements _$DungeonClearRewardDtoCopyWith<$Res> {
  __$DungeonClearRewardDtoCopyWithImpl(this._self, this._then);

  final _DungeonClearRewardDto _self;
  final $Res Function(_DungeonClearRewardDto) _then;

/// Create a copy of DungeonClearRewardDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? exp = null,Object? gold = null,Object? items = null,}) {
  return _then(_DungeonClearRewardDto(
exp: null == exp ? _self.exp : exp // ignore: cast_nullable_to_non_nullable
as int,gold: null == gold ? _self.gold : gold // ignore: cast_nullable_to_non_nullable
as int,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<DungeonRewardItemDto>,
  ));
}


}


/// @nodoc
mixin _$DungeonLevelUpDto {

 bool get leveledUp; int get newLevel; int get levelsGained;
/// Create a copy of DungeonLevelUpDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DungeonLevelUpDtoCopyWith<DungeonLevelUpDto> get copyWith => _$DungeonLevelUpDtoCopyWithImpl<DungeonLevelUpDto>(this as DungeonLevelUpDto, _$identity);

  /// Serializes this DungeonLevelUpDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DungeonLevelUpDto&&(identical(other.leveledUp, leveledUp) || other.leveledUp == leveledUp)&&(identical(other.newLevel, newLevel) || other.newLevel == newLevel)&&(identical(other.levelsGained, levelsGained) || other.levelsGained == levelsGained));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,leveledUp,newLevel,levelsGained);

@override
String toString() {
  return 'DungeonLevelUpDto(leveledUp: $leveledUp, newLevel: $newLevel, levelsGained: $levelsGained)';
}


}

/// @nodoc
abstract mixin class $DungeonLevelUpDtoCopyWith<$Res>  {
  factory $DungeonLevelUpDtoCopyWith(DungeonLevelUpDto value, $Res Function(DungeonLevelUpDto) _then) = _$DungeonLevelUpDtoCopyWithImpl;
@useResult
$Res call({
 bool leveledUp, int newLevel, int levelsGained
});




}
/// @nodoc
class _$DungeonLevelUpDtoCopyWithImpl<$Res>
    implements $DungeonLevelUpDtoCopyWith<$Res> {
  _$DungeonLevelUpDtoCopyWithImpl(this._self, this._then);

  final DungeonLevelUpDto _self;
  final $Res Function(DungeonLevelUpDto) _then;

/// Create a copy of DungeonLevelUpDto
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


/// Adds pattern-matching-related methods to [DungeonLevelUpDto].
extension DungeonLevelUpDtoPatterns on DungeonLevelUpDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DungeonLevelUpDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DungeonLevelUpDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DungeonLevelUpDto value)  $default,){
final _that = this;
switch (_that) {
case _DungeonLevelUpDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DungeonLevelUpDto value)?  $default,){
final _that = this;
switch (_that) {
case _DungeonLevelUpDto() when $default != null:
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
case _DungeonLevelUpDto() when $default != null:
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
case _DungeonLevelUpDto():
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
case _DungeonLevelUpDto() when $default != null:
return $default(_that.leveledUp,_that.newLevel,_that.levelsGained);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DungeonLevelUpDto implements DungeonLevelUpDto {
  const _DungeonLevelUpDto({this.leveledUp = false, this.newLevel = 0, this.levelsGained = 0});
  factory _DungeonLevelUpDto.fromJson(Map<String, dynamic> json) => _$DungeonLevelUpDtoFromJson(json);

@override@JsonKey() final  bool leveledUp;
@override@JsonKey() final  int newLevel;
@override@JsonKey() final  int levelsGained;

/// Create a copy of DungeonLevelUpDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DungeonLevelUpDtoCopyWith<_DungeonLevelUpDto> get copyWith => __$DungeonLevelUpDtoCopyWithImpl<_DungeonLevelUpDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DungeonLevelUpDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DungeonLevelUpDto&&(identical(other.leveledUp, leveledUp) || other.leveledUp == leveledUp)&&(identical(other.newLevel, newLevel) || other.newLevel == newLevel)&&(identical(other.levelsGained, levelsGained) || other.levelsGained == levelsGained));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,leveledUp,newLevel,levelsGained);

@override
String toString() {
  return 'DungeonLevelUpDto(leveledUp: $leveledUp, newLevel: $newLevel, levelsGained: $levelsGained)';
}


}

/// @nodoc
abstract mixin class _$DungeonLevelUpDtoCopyWith<$Res> implements $DungeonLevelUpDtoCopyWith<$Res> {
  factory _$DungeonLevelUpDtoCopyWith(_DungeonLevelUpDto value, $Res Function(_DungeonLevelUpDto) _then) = __$DungeonLevelUpDtoCopyWithImpl;
@override @useResult
$Res call({
 bool leveledUp, int newLevel, int levelsGained
});




}
/// @nodoc
class __$DungeonLevelUpDtoCopyWithImpl<$Res>
    implements _$DungeonLevelUpDtoCopyWith<$Res> {
  __$DungeonLevelUpDtoCopyWithImpl(this._self, this._then);

  final _DungeonLevelUpDto _self;
  final $Res Function(_DungeonLevelUpDto) _then;

/// Create a copy of DungeonLevelUpDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? leveledUp = null,Object? newLevel = null,Object? levelsGained = null,}) {
  return _then(_DungeonLevelUpDto(
leveledUp: null == leveledUp ? _self.leveledUp : leveledUp // ignore: cast_nullable_to_non_nullable
as bool,newLevel: null == newLevel ? _self.newLevel : newLevel // ignore: cast_nullable_to_non_nullable
as int,levelsGained: null == levelsGained ? _self.levelsGained : levelsGained // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$DungeonAdvanceResponseDto {

 bool get cleared; int get wave; int get totalWaves; DungeonMonsterDto? get monster; String? get battleToken; String? get runToken; WaveRewardDto get waveReward; DungeonClearRewardDto? get clearReward; DungeonLevelUpDto get levelUp;
/// Create a copy of DungeonAdvanceResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DungeonAdvanceResponseDtoCopyWith<DungeonAdvanceResponseDto> get copyWith => _$DungeonAdvanceResponseDtoCopyWithImpl<DungeonAdvanceResponseDto>(this as DungeonAdvanceResponseDto, _$identity);

  /// Serializes this DungeonAdvanceResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DungeonAdvanceResponseDto&&(identical(other.cleared, cleared) || other.cleared == cleared)&&(identical(other.wave, wave) || other.wave == wave)&&(identical(other.totalWaves, totalWaves) || other.totalWaves == totalWaves)&&(identical(other.monster, monster) || other.monster == monster)&&(identical(other.battleToken, battleToken) || other.battleToken == battleToken)&&(identical(other.runToken, runToken) || other.runToken == runToken)&&(identical(other.waveReward, waveReward) || other.waveReward == waveReward)&&(identical(other.clearReward, clearReward) || other.clearReward == clearReward)&&(identical(other.levelUp, levelUp) || other.levelUp == levelUp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cleared,wave,totalWaves,monster,battleToken,runToken,waveReward,clearReward,levelUp);

@override
String toString() {
  return 'DungeonAdvanceResponseDto(cleared: $cleared, wave: $wave, totalWaves: $totalWaves, monster: $monster, battleToken: $battleToken, runToken: $runToken, waveReward: $waveReward, clearReward: $clearReward, levelUp: $levelUp)';
}


}

/// @nodoc
abstract mixin class $DungeonAdvanceResponseDtoCopyWith<$Res>  {
  factory $DungeonAdvanceResponseDtoCopyWith(DungeonAdvanceResponseDto value, $Res Function(DungeonAdvanceResponseDto) _then) = _$DungeonAdvanceResponseDtoCopyWithImpl;
@useResult
$Res call({
 bool cleared, int wave, int totalWaves, DungeonMonsterDto? monster, String? battleToken, String? runToken, WaveRewardDto waveReward, DungeonClearRewardDto? clearReward, DungeonLevelUpDto levelUp
});


$DungeonMonsterDtoCopyWith<$Res>? get monster;$WaveRewardDtoCopyWith<$Res> get waveReward;$DungeonClearRewardDtoCopyWith<$Res>? get clearReward;$DungeonLevelUpDtoCopyWith<$Res> get levelUp;

}
/// @nodoc
class _$DungeonAdvanceResponseDtoCopyWithImpl<$Res>
    implements $DungeonAdvanceResponseDtoCopyWith<$Res> {
  _$DungeonAdvanceResponseDtoCopyWithImpl(this._self, this._then);

  final DungeonAdvanceResponseDto _self;
  final $Res Function(DungeonAdvanceResponseDto) _then;

/// Create a copy of DungeonAdvanceResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cleared = null,Object? wave = null,Object? totalWaves = null,Object? monster = freezed,Object? battleToken = freezed,Object? runToken = freezed,Object? waveReward = null,Object? clearReward = freezed,Object? levelUp = null,}) {
  return _then(_self.copyWith(
cleared: null == cleared ? _self.cleared : cleared // ignore: cast_nullable_to_non_nullable
as bool,wave: null == wave ? _self.wave : wave // ignore: cast_nullable_to_non_nullable
as int,totalWaves: null == totalWaves ? _self.totalWaves : totalWaves // ignore: cast_nullable_to_non_nullable
as int,monster: freezed == monster ? _self.monster : monster // ignore: cast_nullable_to_non_nullable
as DungeonMonsterDto?,battleToken: freezed == battleToken ? _self.battleToken : battleToken // ignore: cast_nullable_to_non_nullable
as String?,runToken: freezed == runToken ? _self.runToken : runToken // ignore: cast_nullable_to_non_nullable
as String?,waveReward: null == waveReward ? _self.waveReward : waveReward // ignore: cast_nullable_to_non_nullable
as WaveRewardDto,clearReward: freezed == clearReward ? _self.clearReward : clearReward // ignore: cast_nullable_to_non_nullable
as DungeonClearRewardDto?,levelUp: null == levelUp ? _self.levelUp : levelUp // ignore: cast_nullable_to_non_nullable
as DungeonLevelUpDto,
  ));
}
/// Create a copy of DungeonAdvanceResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DungeonMonsterDtoCopyWith<$Res>? get monster {
    if (_self.monster == null) {
    return null;
  }

  return $DungeonMonsterDtoCopyWith<$Res>(_self.monster!, (value) {
    return _then(_self.copyWith(monster: value));
  });
}/// Create a copy of DungeonAdvanceResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WaveRewardDtoCopyWith<$Res> get waveReward {
  
  return $WaveRewardDtoCopyWith<$Res>(_self.waveReward, (value) {
    return _then(_self.copyWith(waveReward: value));
  });
}/// Create a copy of DungeonAdvanceResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DungeonClearRewardDtoCopyWith<$Res>? get clearReward {
    if (_self.clearReward == null) {
    return null;
  }

  return $DungeonClearRewardDtoCopyWith<$Res>(_self.clearReward!, (value) {
    return _then(_self.copyWith(clearReward: value));
  });
}/// Create a copy of DungeonAdvanceResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DungeonLevelUpDtoCopyWith<$Res> get levelUp {
  
  return $DungeonLevelUpDtoCopyWith<$Res>(_self.levelUp, (value) {
    return _then(_self.copyWith(levelUp: value));
  });
}
}


/// Adds pattern-matching-related methods to [DungeonAdvanceResponseDto].
extension DungeonAdvanceResponseDtoPatterns on DungeonAdvanceResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DungeonAdvanceResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DungeonAdvanceResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DungeonAdvanceResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _DungeonAdvanceResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DungeonAdvanceResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _DungeonAdvanceResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool cleared,  int wave,  int totalWaves,  DungeonMonsterDto? monster,  String? battleToken,  String? runToken,  WaveRewardDto waveReward,  DungeonClearRewardDto? clearReward,  DungeonLevelUpDto levelUp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DungeonAdvanceResponseDto() when $default != null:
return $default(_that.cleared,_that.wave,_that.totalWaves,_that.monster,_that.battleToken,_that.runToken,_that.waveReward,_that.clearReward,_that.levelUp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool cleared,  int wave,  int totalWaves,  DungeonMonsterDto? monster,  String? battleToken,  String? runToken,  WaveRewardDto waveReward,  DungeonClearRewardDto? clearReward,  DungeonLevelUpDto levelUp)  $default,) {final _that = this;
switch (_that) {
case _DungeonAdvanceResponseDto():
return $default(_that.cleared,_that.wave,_that.totalWaves,_that.monster,_that.battleToken,_that.runToken,_that.waveReward,_that.clearReward,_that.levelUp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool cleared,  int wave,  int totalWaves,  DungeonMonsterDto? monster,  String? battleToken,  String? runToken,  WaveRewardDto waveReward,  DungeonClearRewardDto? clearReward,  DungeonLevelUpDto levelUp)?  $default,) {final _that = this;
switch (_that) {
case _DungeonAdvanceResponseDto() when $default != null:
return $default(_that.cleared,_that.wave,_that.totalWaves,_that.monster,_that.battleToken,_that.runToken,_that.waveReward,_that.clearReward,_that.levelUp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DungeonAdvanceResponseDto extends DungeonAdvanceResponseDto {
  const _DungeonAdvanceResponseDto({this.cleared = false, this.wave = 0, this.totalWaves = 1, this.monster, this.battleToken, this.runToken, this.waveReward = const WaveRewardDto(), this.clearReward, this.levelUp = const DungeonLevelUpDto()}): super._();
  factory _DungeonAdvanceResponseDto.fromJson(Map<String, dynamic> json) => _$DungeonAdvanceResponseDtoFromJson(json);

@override@JsonKey() final  bool cleared;
@override@JsonKey() final  int wave;
@override@JsonKey() final  int totalWaves;
@override final  DungeonMonsterDto? monster;
@override final  String? battleToken;
@override final  String? runToken;
@override@JsonKey() final  WaveRewardDto waveReward;
@override final  DungeonClearRewardDto? clearReward;
@override@JsonKey() final  DungeonLevelUpDto levelUp;

/// Create a copy of DungeonAdvanceResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DungeonAdvanceResponseDtoCopyWith<_DungeonAdvanceResponseDto> get copyWith => __$DungeonAdvanceResponseDtoCopyWithImpl<_DungeonAdvanceResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DungeonAdvanceResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DungeonAdvanceResponseDto&&(identical(other.cleared, cleared) || other.cleared == cleared)&&(identical(other.wave, wave) || other.wave == wave)&&(identical(other.totalWaves, totalWaves) || other.totalWaves == totalWaves)&&(identical(other.monster, monster) || other.monster == monster)&&(identical(other.battleToken, battleToken) || other.battleToken == battleToken)&&(identical(other.runToken, runToken) || other.runToken == runToken)&&(identical(other.waveReward, waveReward) || other.waveReward == waveReward)&&(identical(other.clearReward, clearReward) || other.clearReward == clearReward)&&(identical(other.levelUp, levelUp) || other.levelUp == levelUp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cleared,wave,totalWaves,monster,battleToken,runToken,waveReward,clearReward,levelUp);

@override
String toString() {
  return 'DungeonAdvanceResponseDto(cleared: $cleared, wave: $wave, totalWaves: $totalWaves, monster: $monster, battleToken: $battleToken, runToken: $runToken, waveReward: $waveReward, clearReward: $clearReward, levelUp: $levelUp)';
}


}

/// @nodoc
abstract mixin class _$DungeonAdvanceResponseDtoCopyWith<$Res> implements $DungeonAdvanceResponseDtoCopyWith<$Res> {
  factory _$DungeonAdvanceResponseDtoCopyWith(_DungeonAdvanceResponseDto value, $Res Function(_DungeonAdvanceResponseDto) _then) = __$DungeonAdvanceResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 bool cleared, int wave, int totalWaves, DungeonMonsterDto? monster, String? battleToken, String? runToken, WaveRewardDto waveReward, DungeonClearRewardDto? clearReward, DungeonLevelUpDto levelUp
});


@override $DungeonMonsterDtoCopyWith<$Res>? get monster;@override $WaveRewardDtoCopyWith<$Res> get waveReward;@override $DungeonClearRewardDtoCopyWith<$Res>? get clearReward;@override $DungeonLevelUpDtoCopyWith<$Res> get levelUp;

}
/// @nodoc
class __$DungeonAdvanceResponseDtoCopyWithImpl<$Res>
    implements _$DungeonAdvanceResponseDtoCopyWith<$Res> {
  __$DungeonAdvanceResponseDtoCopyWithImpl(this._self, this._then);

  final _DungeonAdvanceResponseDto _self;
  final $Res Function(_DungeonAdvanceResponseDto) _then;

/// Create a copy of DungeonAdvanceResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cleared = null,Object? wave = null,Object? totalWaves = null,Object? monster = freezed,Object? battleToken = freezed,Object? runToken = freezed,Object? waveReward = null,Object? clearReward = freezed,Object? levelUp = null,}) {
  return _then(_DungeonAdvanceResponseDto(
cleared: null == cleared ? _self.cleared : cleared // ignore: cast_nullable_to_non_nullable
as bool,wave: null == wave ? _self.wave : wave // ignore: cast_nullable_to_non_nullable
as int,totalWaves: null == totalWaves ? _self.totalWaves : totalWaves // ignore: cast_nullable_to_non_nullable
as int,monster: freezed == monster ? _self.monster : monster // ignore: cast_nullable_to_non_nullable
as DungeonMonsterDto?,battleToken: freezed == battleToken ? _self.battleToken : battleToken // ignore: cast_nullable_to_non_nullable
as String?,runToken: freezed == runToken ? _self.runToken : runToken // ignore: cast_nullable_to_non_nullable
as String?,waveReward: null == waveReward ? _self.waveReward : waveReward // ignore: cast_nullable_to_non_nullable
as WaveRewardDto,clearReward: freezed == clearReward ? _self.clearReward : clearReward // ignore: cast_nullable_to_non_nullable
as DungeonClearRewardDto?,levelUp: null == levelUp ? _self.levelUp : levelUp // ignore: cast_nullable_to_non_nullable
as DungeonLevelUpDto,
  ));
}

/// Create a copy of DungeonAdvanceResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DungeonMonsterDtoCopyWith<$Res>? get monster {
    if (_self.monster == null) {
    return null;
  }

  return $DungeonMonsterDtoCopyWith<$Res>(_self.monster!, (value) {
    return _then(_self.copyWith(monster: value));
  });
}/// Create a copy of DungeonAdvanceResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WaveRewardDtoCopyWith<$Res> get waveReward {
  
  return $WaveRewardDtoCopyWith<$Res>(_self.waveReward, (value) {
    return _then(_self.copyWith(waveReward: value));
  });
}/// Create a copy of DungeonAdvanceResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DungeonClearRewardDtoCopyWith<$Res>? get clearReward {
    if (_self.clearReward == null) {
    return null;
  }

  return $DungeonClearRewardDtoCopyWith<$Res>(_self.clearReward!, (value) {
    return _then(_self.copyWith(clearReward: value));
  });
}/// Create a copy of DungeonAdvanceResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DungeonLevelUpDtoCopyWith<$Res> get levelUp {
  
  return $DungeonLevelUpDtoCopyWith<$Res>(_self.levelUp, (value) {
    return _then(_self.copyWith(levelUp: value));
  });
}
}

// dart format on
