// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battle_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StartBattleRequestDto {

 String get monsterId;
/// Create a copy of StartBattleRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StartBattleRequestDtoCopyWith<StartBattleRequestDto> get copyWith => _$StartBattleRequestDtoCopyWithImpl<StartBattleRequestDto>(this as StartBattleRequestDto, _$identity);

  /// Serializes this StartBattleRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartBattleRequestDto&&(identical(other.monsterId, monsterId) || other.monsterId == monsterId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,monsterId);

@override
String toString() {
  return 'StartBattleRequestDto(monsterId: $monsterId)';
}


}

/// @nodoc
abstract mixin class $StartBattleRequestDtoCopyWith<$Res>  {
  factory $StartBattleRequestDtoCopyWith(StartBattleRequestDto value, $Res Function(StartBattleRequestDto) _then) = _$StartBattleRequestDtoCopyWithImpl;
@useResult
$Res call({
 String monsterId
});




}
/// @nodoc
class _$StartBattleRequestDtoCopyWithImpl<$Res>
    implements $StartBattleRequestDtoCopyWith<$Res> {
  _$StartBattleRequestDtoCopyWithImpl(this._self, this._then);

  final StartBattleRequestDto _self;
  final $Res Function(StartBattleRequestDto) _then;

/// Create a copy of StartBattleRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? monsterId = null,}) {
  return _then(_self.copyWith(
monsterId: null == monsterId ? _self.monsterId : monsterId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StartBattleRequestDto].
extension StartBattleRequestDtoPatterns on StartBattleRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StartBattleRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StartBattleRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StartBattleRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _StartBattleRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StartBattleRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _StartBattleRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String monsterId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StartBattleRequestDto() when $default != null:
return $default(_that.monsterId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String monsterId)  $default,) {final _that = this;
switch (_that) {
case _StartBattleRequestDto():
return $default(_that.monsterId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String monsterId)?  $default,) {final _that = this;
switch (_that) {
case _StartBattleRequestDto() when $default != null:
return $default(_that.monsterId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StartBattleRequestDto implements StartBattleRequestDto {
  const _StartBattleRequestDto({required this.monsterId});
  factory _StartBattleRequestDto.fromJson(Map<String, dynamic> json) => _$StartBattleRequestDtoFromJson(json);

@override final  String monsterId;

/// Create a copy of StartBattleRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartBattleRequestDtoCopyWith<_StartBattleRequestDto> get copyWith => __$StartBattleRequestDtoCopyWithImpl<_StartBattleRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StartBattleRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StartBattleRequestDto&&(identical(other.monsterId, monsterId) || other.monsterId == monsterId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,monsterId);

@override
String toString() {
  return 'StartBattleRequestDto(monsterId: $monsterId)';
}


}

/// @nodoc
abstract mixin class _$StartBattleRequestDtoCopyWith<$Res> implements $StartBattleRequestDtoCopyWith<$Res> {
  factory _$StartBattleRequestDtoCopyWith(_StartBattleRequestDto value, $Res Function(_StartBattleRequestDto) _then) = __$StartBattleRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String monsterId
});




}
/// @nodoc
class __$StartBattleRequestDtoCopyWithImpl<$Res>
    implements _$StartBattleRequestDtoCopyWith<$Res> {
  __$StartBattleRequestDtoCopyWithImpl(this._self, this._then);

  final _StartBattleRequestDto _self;
  final $Res Function(_StartBattleRequestDto) _then;

/// Create a copy of StartBattleRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? monsterId = null,}) {
  return _then(_StartBattleRequestDto(
monsterId: null == monsterId ? _self.monsterId : monsterId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$StartBattleResponseDto {

 String get battleToken; BattleMonsterDto get monster;
/// Create a copy of StartBattleResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StartBattleResponseDtoCopyWith<StartBattleResponseDto> get copyWith => _$StartBattleResponseDtoCopyWithImpl<StartBattleResponseDto>(this as StartBattleResponseDto, _$identity);

  /// Serializes this StartBattleResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartBattleResponseDto&&(identical(other.battleToken, battleToken) || other.battleToken == battleToken)&&(identical(other.monster, monster) || other.monster == monster));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,battleToken,monster);

@override
String toString() {
  return 'StartBattleResponseDto(battleToken: $battleToken, monster: $monster)';
}


}

/// @nodoc
abstract mixin class $StartBattleResponseDtoCopyWith<$Res>  {
  factory $StartBattleResponseDtoCopyWith(StartBattleResponseDto value, $Res Function(StartBattleResponseDto) _then) = _$StartBattleResponseDtoCopyWithImpl;
@useResult
$Res call({
 String battleToken, BattleMonsterDto monster
});


$BattleMonsterDtoCopyWith<$Res> get monster;

}
/// @nodoc
class _$StartBattleResponseDtoCopyWithImpl<$Res>
    implements $StartBattleResponseDtoCopyWith<$Res> {
  _$StartBattleResponseDtoCopyWithImpl(this._self, this._then);

  final StartBattleResponseDto _self;
  final $Res Function(StartBattleResponseDto) _then;

/// Create a copy of StartBattleResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? battleToken = null,Object? monster = null,}) {
  return _then(_self.copyWith(
battleToken: null == battleToken ? _self.battleToken : battleToken // ignore: cast_nullable_to_non_nullable
as String,monster: null == monster ? _self.monster : monster // ignore: cast_nullable_to_non_nullable
as BattleMonsterDto,
  ));
}
/// Create a copy of StartBattleResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BattleMonsterDtoCopyWith<$Res> get monster {
  
  return $BattleMonsterDtoCopyWith<$Res>(_self.monster, (value) {
    return _then(_self.copyWith(monster: value));
  });
}
}


/// Adds pattern-matching-related methods to [StartBattleResponseDto].
extension StartBattleResponseDtoPatterns on StartBattleResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StartBattleResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StartBattleResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StartBattleResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _StartBattleResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StartBattleResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _StartBattleResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String battleToken,  BattleMonsterDto monster)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StartBattleResponseDto() when $default != null:
return $default(_that.battleToken,_that.monster);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String battleToken,  BattleMonsterDto monster)  $default,) {final _that = this;
switch (_that) {
case _StartBattleResponseDto():
return $default(_that.battleToken,_that.monster);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String battleToken,  BattleMonsterDto monster)?  $default,) {final _that = this;
switch (_that) {
case _StartBattleResponseDto() when $default != null:
return $default(_that.battleToken,_that.monster);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StartBattleResponseDto extends StartBattleResponseDto {
  const _StartBattleResponseDto({required this.battleToken, required this.monster}): super._();
  factory _StartBattleResponseDto.fromJson(Map<String, dynamic> json) => _$StartBattleResponseDtoFromJson(json);

@override final  String battleToken;
@override final  BattleMonsterDto monster;

/// Create a copy of StartBattleResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartBattleResponseDtoCopyWith<_StartBattleResponseDto> get copyWith => __$StartBattleResponseDtoCopyWithImpl<_StartBattleResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StartBattleResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StartBattleResponseDto&&(identical(other.battleToken, battleToken) || other.battleToken == battleToken)&&(identical(other.monster, monster) || other.monster == monster));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,battleToken,monster);

@override
String toString() {
  return 'StartBattleResponseDto(battleToken: $battleToken, monster: $monster)';
}


}

/// @nodoc
abstract mixin class _$StartBattleResponseDtoCopyWith<$Res> implements $StartBattleResponseDtoCopyWith<$Res> {
  factory _$StartBattleResponseDtoCopyWith(_StartBattleResponseDto value, $Res Function(_StartBattleResponseDto) _then) = __$StartBattleResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String battleToken, BattleMonsterDto monster
});


@override $BattleMonsterDtoCopyWith<$Res> get monster;

}
/// @nodoc
class __$StartBattleResponseDtoCopyWithImpl<$Res>
    implements _$StartBattleResponseDtoCopyWith<$Res> {
  __$StartBattleResponseDtoCopyWithImpl(this._self, this._then);

  final _StartBattleResponseDto _self;
  final $Res Function(_StartBattleResponseDto) _then;

/// Create a copy of StartBattleResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? battleToken = null,Object? monster = null,}) {
  return _then(_StartBattleResponseDto(
battleToken: null == battleToken ? _self.battleToken : battleToken // ignore: cast_nullable_to_non_nullable
as String,monster: null == monster ? _self.monster : monster // ignore: cast_nullable_to_non_nullable
as BattleMonsterDto,
  ));
}

/// Create a copy of StartBattleResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BattleMonsterDtoCopyWith<$Res> get monster {
  
  return $BattleMonsterDtoCopyWith<$Res>(_self.monster, (value) {
    return _then(_self.copyWith(monster: value));
  });
}
}


/// @nodoc
mixin _$BattleMonsterDto {

 String get id; int get level;
/// Create a copy of BattleMonsterDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BattleMonsterDtoCopyWith<BattleMonsterDto> get copyWith => _$BattleMonsterDtoCopyWithImpl<BattleMonsterDto>(this as BattleMonsterDto, _$identity);

  /// Serializes this BattleMonsterDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BattleMonsterDto&&(identical(other.id, id) || other.id == id)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,level);

@override
String toString() {
  return 'BattleMonsterDto(id: $id, level: $level)';
}


}

/// @nodoc
abstract mixin class $BattleMonsterDtoCopyWith<$Res>  {
  factory $BattleMonsterDtoCopyWith(BattleMonsterDto value, $Res Function(BattleMonsterDto) _then) = _$BattleMonsterDtoCopyWithImpl;
@useResult
$Res call({
 String id, int level
});




}
/// @nodoc
class _$BattleMonsterDtoCopyWithImpl<$Res>
    implements $BattleMonsterDtoCopyWith<$Res> {
  _$BattleMonsterDtoCopyWithImpl(this._self, this._then);

  final BattleMonsterDto _self;
  final $Res Function(BattleMonsterDto) _then;

/// Create a copy of BattleMonsterDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? level = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [BattleMonsterDto].
extension BattleMonsterDtoPatterns on BattleMonsterDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BattleMonsterDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BattleMonsterDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BattleMonsterDto value)  $default,){
final _that = this;
switch (_that) {
case _BattleMonsterDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BattleMonsterDto value)?  $default,){
final _that = this;
switch (_that) {
case _BattleMonsterDto() when $default != null:
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
case _BattleMonsterDto() when $default != null:
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
case _BattleMonsterDto():
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
case _BattleMonsterDto() when $default != null:
return $default(_that.id,_that.level);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BattleMonsterDto implements BattleMonsterDto {
  const _BattleMonsterDto({required this.id, this.level = 1});
  factory _BattleMonsterDto.fromJson(Map<String, dynamic> json) => _$BattleMonsterDtoFromJson(json);

@override final  String id;
@override@JsonKey() final  int level;

/// Create a copy of BattleMonsterDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BattleMonsterDtoCopyWith<_BattleMonsterDto> get copyWith => __$BattleMonsterDtoCopyWithImpl<_BattleMonsterDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BattleMonsterDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BattleMonsterDto&&(identical(other.id, id) || other.id == id)&&(identical(other.level, level) || other.level == level));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,level);

@override
String toString() {
  return 'BattleMonsterDto(id: $id, level: $level)';
}


}

/// @nodoc
abstract mixin class _$BattleMonsterDtoCopyWith<$Res> implements $BattleMonsterDtoCopyWith<$Res> {
  factory _$BattleMonsterDtoCopyWith(_BattleMonsterDto value, $Res Function(_BattleMonsterDto) _then) = __$BattleMonsterDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, int level
});




}
/// @nodoc
class __$BattleMonsterDtoCopyWithImpl<$Res>
    implements _$BattleMonsterDtoCopyWith<$Res> {
  __$BattleMonsterDtoCopyWithImpl(this._self, this._then);

  final _BattleMonsterDto _self;
  final $Res Function(_BattleMonsterDto) _then;

/// Create a copy of BattleMonsterDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? level = null,}) {
  return _then(_BattleMonsterDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$CompleteBattleRequestDto {

 String get battleToken; String get result; int get currentHp; int get currentMp;
/// Create a copy of CompleteBattleRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompleteBattleRequestDtoCopyWith<CompleteBattleRequestDto> get copyWith => _$CompleteBattleRequestDtoCopyWithImpl<CompleteBattleRequestDto>(this as CompleteBattleRequestDto, _$identity);

  /// Serializes this CompleteBattleRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompleteBattleRequestDto&&(identical(other.battleToken, battleToken) || other.battleToken == battleToken)&&(identical(other.result, result) || other.result == result)&&(identical(other.currentHp, currentHp) || other.currentHp == currentHp)&&(identical(other.currentMp, currentMp) || other.currentMp == currentMp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,battleToken,result,currentHp,currentMp);

@override
String toString() {
  return 'CompleteBattleRequestDto(battleToken: $battleToken, result: $result, currentHp: $currentHp, currentMp: $currentMp)';
}


}

/// @nodoc
abstract mixin class $CompleteBattleRequestDtoCopyWith<$Res>  {
  factory $CompleteBattleRequestDtoCopyWith(CompleteBattleRequestDto value, $Res Function(CompleteBattleRequestDto) _then) = _$CompleteBattleRequestDtoCopyWithImpl;
@useResult
$Res call({
 String battleToken, String result, int currentHp, int currentMp
});




}
/// @nodoc
class _$CompleteBattleRequestDtoCopyWithImpl<$Res>
    implements $CompleteBattleRequestDtoCopyWith<$Res> {
  _$CompleteBattleRequestDtoCopyWithImpl(this._self, this._then);

  final CompleteBattleRequestDto _self;
  final $Res Function(CompleteBattleRequestDto) _then;

/// Create a copy of CompleteBattleRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? battleToken = null,Object? result = null,Object? currentHp = null,Object? currentMp = null,}) {
  return _then(_self.copyWith(
battleToken: null == battleToken ? _self.battleToken : battleToken // ignore: cast_nullable_to_non_nullable
as String,result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as String,currentHp: null == currentHp ? _self.currentHp : currentHp // ignore: cast_nullable_to_non_nullable
as int,currentMp: null == currentMp ? _self.currentMp : currentMp // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CompleteBattleRequestDto].
extension CompleteBattleRequestDtoPatterns on CompleteBattleRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompleteBattleRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompleteBattleRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompleteBattleRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _CompleteBattleRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompleteBattleRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _CompleteBattleRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String battleToken,  String result,  int currentHp,  int currentMp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompleteBattleRequestDto() when $default != null:
return $default(_that.battleToken,_that.result,_that.currentHp,_that.currentMp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String battleToken,  String result,  int currentHp,  int currentMp)  $default,) {final _that = this;
switch (_that) {
case _CompleteBattleRequestDto():
return $default(_that.battleToken,_that.result,_that.currentHp,_that.currentMp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String battleToken,  String result,  int currentHp,  int currentMp)?  $default,) {final _that = this;
switch (_that) {
case _CompleteBattleRequestDto() when $default != null:
return $default(_that.battleToken,_that.result,_that.currentHp,_that.currentMp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompleteBattleRequestDto implements CompleteBattleRequestDto {
  const _CompleteBattleRequestDto({required this.battleToken, required this.result, required this.currentHp, required this.currentMp});
  factory _CompleteBattleRequestDto.fromJson(Map<String, dynamic> json) => _$CompleteBattleRequestDtoFromJson(json);

@override final  String battleToken;
@override final  String result;
@override final  int currentHp;
@override final  int currentMp;

/// Create a copy of CompleteBattleRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompleteBattleRequestDtoCopyWith<_CompleteBattleRequestDto> get copyWith => __$CompleteBattleRequestDtoCopyWithImpl<_CompleteBattleRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompleteBattleRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompleteBattleRequestDto&&(identical(other.battleToken, battleToken) || other.battleToken == battleToken)&&(identical(other.result, result) || other.result == result)&&(identical(other.currentHp, currentHp) || other.currentHp == currentHp)&&(identical(other.currentMp, currentMp) || other.currentMp == currentMp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,battleToken,result,currentHp,currentMp);

@override
String toString() {
  return 'CompleteBattleRequestDto(battleToken: $battleToken, result: $result, currentHp: $currentHp, currentMp: $currentMp)';
}


}

/// @nodoc
abstract mixin class _$CompleteBattleRequestDtoCopyWith<$Res> implements $CompleteBattleRequestDtoCopyWith<$Res> {
  factory _$CompleteBattleRequestDtoCopyWith(_CompleteBattleRequestDto value, $Res Function(_CompleteBattleRequestDto) _then) = __$CompleteBattleRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String battleToken, String result, int currentHp, int currentMp
});




}
/// @nodoc
class __$CompleteBattleRequestDtoCopyWithImpl<$Res>
    implements _$CompleteBattleRequestDtoCopyWith<$Res> {
  __$CompleteBattleRequestDtoCopyWithImpl(this._self, this._then);

  final _CompleteBattleRequestDto _self;
  final $Res Function(_CompleteBattleRequestDto) _then;

/// Create a copy of CompleteBattleRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? battleToken = null,Object? result = null,Object? currentHp = null,Object? currentMp = null,}) {
  return _then(_CompleteBattleRequestDto(
battleToken: null == battleToken ? _self.battleToken : battleToken // ignore: cast_nullable_to_non_nullable
as String,result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as String,currentHp: null == currentHp ? _self.currentHp : currentHp // ignore: cast_nullable_to_non_nullable
as int,currentMp: null == currentMp ? _self.currentMp : currentMp // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$LevelUpDto {

 bool get leveledUp; int get newLevel; int get levelsGained;
/// Create a copy of LevelUpDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LevelUpDtoCopyWith<LevelUpDto> get copyWith => _$LevelUpDtoCopyWithImpl<LevelUpDto>(this as LevelUpDto, _$identity);

  /// Serializes this LevelUpDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LevelUpDto&&(identical(other.leveledUp, leveledUp) || other.leveledUp == leveledUp)&&(identical(other.newLevel, newLevel) || other.newLevel == newLevel)&&(identical(other.levelsGained, levelsGained) || other.levelsGained == levelsGained));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,leveledUp,newLevel,levelsGained);

@override
String toString() {
  return 'LevelUpDto(leveledUp: $leveledUp, newLevel: $newLevel, levelsGained: $levelsGained)';
}


}

/// @nodoc
abstract mixin class $LevelUpDtoCopyWith<$Res>  {
  factory $LevelUpDtoCopyWith(LevelUpDto value, $Res Function(LevelUpDto) _then) = _$LevelUpDtoCopyWithImpl;
@useResult
$Res call({
 bool leveledUp, int newLevel, int levelsGained
});




}
/// @nodoc
class _$LevelUpDtoCopyWithImpl<$Res>
    implements $LevelUpDtoCopyWith<$Res> {
  _$LevelUpDtoCopyWithImpl(this._self, this._then);

  final LevelUpDto _self;
  final $Res Function(LevelUpDto) _then;

/// Create a copy of LevelUpDto
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


/// Adds pattern-matching-related methods to [LevelUpDto].
extension LevelUpDtoPatterns on LevelUpDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LevelUpDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LevelUpDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LevelUpDto value)  $default,){
final _that = this;
switch (_that) {
case _LevelUpDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LevelUpDto value)?  $default,){
final _that = this;
switch (_that) {
case _LevelUpDto() when $default != null:
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
case _LevelUpDto() when $default != null:
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
case _LevelUpDto():
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
case _LevelUpDto() when $default != null:
return $default(_that.leveledUp,_that.newLevel,_that.levelsGained);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LevelUpDto implements LevelUpDto {
  const _LevelUpDto({this.leveledUp = false, this.newLevel = 0, this.levelsGained = 0});
  factory _LevelUpDto.fromJson(Map<String, dynamic> json) => _$LevelUpDtoFromJson(json);

@override@JsonKey() final  bool leveledUp;
@override@JsonKey() final  int newLevel;
@override@JsonKey() final  int levelsGained;

/// Create a copy of LevelUpDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LevelUpDtoCopyWith<_LevelUpDto> get copyWith => __$LevelUpDtoCopyWithImpl<_LevelUpDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LevelUpDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LevelUpDto&&(identical(other.leveledUp, leveledUp) || other.leveledUp == leveledUp)&&(identical(other.newLevel, newLevel) || other.newLevel == newLevel)&&(identical(other.levelsGained, levelsGained) || other.levelsGained == levelsGained));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,leveledUp,newLevel,levelsGained);

@override
String toString() {
  return 'LevelUpDto(leveledUp: $leveledUp, newLevel: $newLevel, levelsGained: $levelsGained)';
}


}

/// @nodoc
abstract mixin class _$LevelUpDtoCopyWith<$Res> implements $LevelUpDtoCopyWith<$Res> {
  factory _$LevelUpDtoCopyWith(_LevelUpDto value, $Res Function(_LevelUpDto) _then) = __$LevelUpDtoCopyWithImpl;
@override @useResult
$Res call({
 bool leveledUp, int newLevel, int levelsGained
});




}
/// @nodoc
class __$LevelUpDtoCopyWithImpl<$Res>
    implements _$LevelUpDtoCopyWith<$Res> {
  __$LevelUpDtoCopyWithImpl(this._self, this._then);

  final _LevelUpDto _self;
  final $Res Function(_LevelUpDto) _then;

/// Create a copy of LevelUpDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? leveledUp = null,Object? newLevel = null,Object? levelsGained = null,}) {
  return _then(_LevelUpDto(
leveledUp: null == leveledUp ? _self.leveledUp : leveledUp // ignore: cast_nullable_to_non_nullable
as bool,newLevel: null == newLevel ? _self.newLevel : newLevel // ignore: cast_nullable_to_non_nullable
as int,levelsGained: null == levelsGained ? _self.levelsGained : levelsGained // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$BattleDropDto {

 String get itemId; int get quantity;
/// Create a copy of BattleDropDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BattleDropDtoCopyWith<BattleDropDto> get copyWith => _$BattleDropDtoCopyWithImpl<BattleDropDto>(this as BattleDropDto, _$identity);

  /// Serializes this BattleDropDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BattleDropDto&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,quantity);

@override
String toString() {
  return 'BattleDropDto(itemId: $itemId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $BattleDropDtoCopyWith<$Res>  {
  factory $BattleDropDtoCopyWith(BattleDropDto value, $Res Function(BattleDropDto) _then) = _$BattleDropDtoCopyWithImpl;
@useResult
$Res call({
 String itemId, int quantity
});




}
/// @nodoc
class _$BattleDropDtoCopyWithImpl<$Res>
    implements $BattleDropDtoCopyWith<$Res> {
  _$BattleDropDtoCopyWithImpl(this._self, this._then);

  final BattleDropDto _self;
  final $Res Function(BattleDropDto) _then;

/// Create a copy of BattleDropDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemId = null,Object? quantity = null,}) {
  return _then(_self.copyWith(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [BattleDropDto].
extension BattleDropDtoPatterns on BattleDropDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BattleDropDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BattleDropDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BattleDropDto value)  $default,){
final _that = this;
switch (_that) {
case _BattleDropDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BattleDropDto value)?  $default,){
final _that = this;
switch (_that) {
case _BattleDropDto() when $default != null:
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
case _BattleDropDto() when $default != null:
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
case _BattleDropDto():
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
case _BattleDropDto() when $default != null:
return $default(_that.itemId,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BattleDropDto implements BattleDropDto {
  const _BattleDropDto({required this.itemId, this.quantity = 1});
  factory _BattleDropDto.fromJson(Map<String, dynamic> json) => _$BattleDropDtoFromJson(json);

@override final  String itemId;
@override@JsonKey() final  int quantity;

/// Create a copy of BattleDropDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BattleDropDtoCopyWith<_BattleDropDto> get copyWith => __$BattleDropDtoCopyWithImpl<_BattleDropDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BattleDropDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BattleDropDto&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,itemId,quantity);

@override
String toString() {
  return 'BattleDropDto(itemId: $itemId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$BattleDropDtoCopyWith<$Res> implements $BattleDropDtoCopyWith<$Res> {
  factory _$BattleDropDtoCopyWith(_BattleDropDto value, $Res Function(_BattleDropDto) _then) = __$BattleDropDtoCopyWithImpl;
@override @useResult
$Res call({
 String itemId, int quantity
});




}
/// @nodoc
class __$BattleDropDtoCopyWithImpl<$Res>
    implements _$BattleDropDtoCopyWith<$Res> {
  __$BattleDropDtoCopyWithImpl(this._self, this._then);

  final _BattleDropDto _self;
  final $Res Function(_BattleDropDto) _then;

/// Create a copy of BattleDropDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? quantity = null,}) {
  return _then(_BattleDropDto(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$CompleteBattleResponseDto {

 String get result; int get exp; int get gold; List<BattleDropDto> get drops; LevelUpDto get levelUp; int get totalGold; int get totalExp;
/// Create a copy of CompleteBattleResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompleteBattleResponseDtoCopyWith<CompleteBattleResponseDto> get copyWith => _$CompleteBattleResponseDtoCopyWithImpl<CompleteBattleResponseDto>(this as CompleteBattleResponseDto, _$identity);

  /// Serializes this CompleteBattleResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompleteBattleResponseDto&&(identical(other.result, result) || other.result == result)&&(identical(other.exp, exp) || other.exp == exp)&&(identical(other.gold, gold) || other.gold == gold)&&const DeepCollectionEquality().equals(other.drops, drops)&&(identical(other.levelUp, levelUp) || other.levelUp == levelUp)&&(identical(other.totalGold, totalGold) || other.totalGold == totalGold)&&(identical(other.totalExp, totalExp) || other.totalExp == totalExp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,result,exp,gold,const DeepCollectionEquality().hash(drops),levelUp,totalGold,totalExp);

@override
String toString() {
  return 'CompleteBattleResponseDto(result: $result, exp: $exp, gold: $gold, drops: $drops, levelUp: $levelUp, totalGold: $totalGold, totalExp: $totalExp)';
}


}

/// @nodoc
abstract mixin class $CompleteBattleResponseDtoCopyWith<$Res>  {
  factory $CompleteBattleResponseDtoCopyWith(CompleteBattleResponseDto value, $Res Function(CompleteBattleResponseDto) _then) = _$CompleteBattleResponseDtoCopyWithImpl;
@useResult
$Res call({
 String result, int exp, int gold, List<BattleDropDto> drops, LevelUpDto levelUp, int totalGold, int totalExp
});


$LevelUpDtoCopyWith<$Res> get levelUp;

}
/// @nodoc
class _$CompleteBattleResponseDtoCopyWithImpl<$Res>
    implements $CompleteBattleResponseDtoCopyWith<$Res> {
  _$CompleteBattleResponseDtoCopyWithImpl(this._self, this._then);

  final CompleteBattleResponseDto _self;
  final $Res Function(CompleteBattleResponseDto) _then;

/// Create a copy of CompleteBattleResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? result = null,Object? exp = null,Object? gold = null,Object? drops = null,Object? levelUp = null,Object? totalGold = null,Object? totalExp = null,}) {
  return _then(_self.copyWith(
result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as String,exp: null == exp ? _self.exp : exp // ignore: cast_nullable_to_non_nullable
as int,gold: null == gold ? _self.gold : gold // ignore: cast_nullable_to_non_nullable
as int,drops: null == drops ? _self.drops : drops // ignore: cast_nullable_to_non_nullable
as List<BattleDropDto>,levelUp: null == levelUp ? _self.levelUp : levelUp // ignore: cast_nullable_to_non_nullable
as LevelUpDto,totalGold: null == totalGold ? _self.totalGold : totalGold // ignore: cast_nullable_to_non_nullable
as int,totalExp: null == totalExp ? _self.totalExp : totalExp // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of CompleteBattleResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LevelUpDtoCopyWith<$Res> get levelUp {
  
  return $LevelUpDtoCopyWith<$Res>(_self.levelUp, (value) {
    return _then(_self.copyWith(levelUp: value));
  });
}
}


/// Adds pattern-matching-related methods to [CompleteBattleResponseDto].
extension CompleteBattleResponseDtoPatterns on CompleteBattleResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompleteBattleResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompleteBattleResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompleteBattleResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _CompleteBattleResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompleteBattleResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _CompleteBattleResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String result,  int exp,  int gold,  List<BattleDropDto> drops,  LevelUpDto levelUp,  int totalGold,  int totalExp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompleteBattleResponseDto() when $default != null:
return $default(_that.result,_that.exp,_that.gold,_that.drops,_that.levelUp,_that.totalGold,_that.totalExp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String result,  int exp,  int gold,  List<BattleDropDto> drops,  LevelUpDto levelUp,  int totalGold,  int totalExp)  $default,) {final _that = this;
switch (_that) {
case _CompleteBattleResponseDto():
return $default(_that.result,_that.exp,_that.gold,_that.drops,_that.levelUp,_that.totalGold,_that.totalExp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String result,  int exp,  int gold,  List<BattleDropDto> drops,  LevelUpDto levelUp,  int totalGold,  int totalExp)?  $default,) {final _that = this;
switch (_that) {
case _CompleteBattleResponseDto() when $default != null:
return $default(_that.result,_that.exp,_that.gold,_that.drops,_that.levelUp,_that.totalGold,_that.totalExp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompleteBattleResponseDto extends CompleteBattleResponseDto {
  const _CompleteBattleResponseDto({this.result = 'victory', this.exp = 0, this.gold = 0, final  List<BattleDropDto> drops = const <BattleDropDto>[], this.levelUp = const LevelUpDto(), this.totalGold = 0, this.totalExp = 0}): _drops = drops,super._();
  factory _CompleteBattleResponseDto.fromJson(Map<String, dynamic> json) => _$CompleteBattleResponseDtoFromJson(json);

@override@JsonKey() final  String result;
@override@JsonKey() final  int exp;
@override@JsonKey() final  int gold;
 final  List<BattleDropDto> _drops;
@override@JsonKey() List<BattleDropDto> get drops {
  if (_drops is EqualUnmodifiableListView) return _drops;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_drops);
}

@override@JsonKey() final  LevelUpDto levelUp;
@override@JsonKey() final  int totalGold;
@override@JsonKey() final  int totalExp;

/// Create a copy of CompleteBattleResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompleteBattleResponseDtoCopyWith<_CompleteBattleResponseDto> get copyWith => __$CompleteBattleResponseDtoCopyWithImpl<_CompleteBattleResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompleteBattleResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompleteBattleResponseDto&&(identical(other.result, result) || other.result == result)&&(identical(other.exp, exp) || other.exp == exp)&&(identical(other.gold, gold) || other.gold == gold)&&const DeepCollectionEquality().equals(other._drops, _drops)&&(identical(other.levelUp, levelUp) || other.levelUp == levelUp)&&(identical(other.totalGold, totalGold) || other.totalGold == totalGold)&&(identical(other.totalExp, totalExp) || other.totalExp == totalExp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,result,exp,gold,const DeepCollectionEquality().hash(_drops),levelUp,totalGold,totalExp);

@override
String toString() {
  return 'CompleteBattleResponseDto(result: $result, exp: $exp, gold: $gold, drops: $drops, levelUp: $levelUp, totalGold: $totalGold, totalExp: $totalExp)';
}


}

/// @nodoc
abstract mixin class _$CompleteBattleResponseDtoCopyWith<$Res> implements $CompleteBattleResponseDtoCopyWith<$Res> {
  factory _$CompleteBattleResponseDtoCopyWith(_CompleteBattleResponseDto value, $Res Function(_CompleteBattleResponseDto) _then) = __$CompleteBattleResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String result, int exp, int gold, List<BattleDropDto> drops, LevelUpDto levelUp, int totalGold, int totalExp
});


@override $LevelUpDtoCopyWith<$Res> get levelUp;

}
/// @nodoc
class __$CompleteBattleResponseDtoCopyWithImpl<$Res>
    implements _$CompleteBattleResponseDtoCopyWith<$Res> {
  __$CompleteBattleResponseDtoCopyWithImpl(this._self, this._then);

  final _CompleteBattleResponseDto _self;
  final $Res Function(_CompleteBattleResponseDto) _then;

/// Create a copy of CompleteBattleResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? result = null,Object? exp = null,Object? gold = null,Object? drops = null,Object? levelUp = null,Object? totalGold = null,Object? totalExp = null,}) {
  return _then(_CompleteBattleResponseDto(
result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as String,exp: null == exp ? _self.exp : exp // ignore: cast_nullable_to_non_nullable
as int,gold: null == gold ? _self.gold : gold // ignore: cast_nullable_to_non_nullable
as int,drops: null == drops ? _self._drops : drops // ignore: cast_nullable_to_non_nullable
as List<BattleDropDto>,levelUp: null == levelUp ? _self.levelUp : levelUp // ignore: cast_nullable_to_non_nullable
as LevelUpDto,totalGold: null == totalGold ? _self.totalGold : totalGold // ignore: cast_nullable_to_non_nullable
as int,totalExp: null == totalExp ? _self.totalExp : totalExp // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of CompleteBattleResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LevelUpDtoCopyWith<$Res> get levelUp {
  
  return $LevelUpDtoCopyWith<$Res>(_self.levelUp, (value) {
    return _then(_self.copyWith(levelUp: value));
  });
}
}

// dart format on
