// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileEnvelopeDto {

 ProfileDto? get data;
/// Create a copy of ProfileEnvelopeDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileEnvelopeDtoCopyWith<ProfileEnvelopeDto> get copyWith => _$ProfileEnvelopeDtoCopyWithImpl<ProfileEnvelopeDto>(this as ProfileEnvelopeDto, _$identity);

  /// Serializes this ProfileEnvelopeDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEnvelopeDto&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ProfileEnvelopeDto(data: $data)';
}


}

/// @nodoc
abstract mixin class $ProfileEnvelopeDtoCopyWith<$Res>  {
  factory $ProfileEnvelopeDtoCopyWith(ProfileEnvelopeDto value, $Res Function(ProfileEnvelopeDto) _then) = _$ProfileEnvelopeDtoCopyWithImpl;
@useResult
$Res call({
 ProfileDto? data
});


$ProfileDtoCopyWith<$Res>? get data;

}
/// @nodoc
class _$ProfileEnvelopeDtoCopyWithImpl<$Res>
    implements $ProfileEnvelopeDtoCopyWith<$Res> {
  _$ProfileEnvelopeDtoCopyWithImpl(this._self, this._then);

  final ProfileEnvelopeDto _self;
  final $Res Function(ProfileEnvelopeDto) _then;

/// Create a copy of ProfileEnvelopeDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ProfileDto?,
  ));
}
/// Create a copy of ProfileEnvelopeDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ProfileDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileEnvelopeDto].
extension ProfileEnvelopeDtoPatterns on ProfileEnvelopeDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileEnvelopeDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileEnvelopeDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileEnvelopeDto value)  $default,){
final _that = this;
switch (_that) {
case _ProfileEnvelopeDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileEnvelopeDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileEnvelopeDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProfileDto? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileEnvelopeDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProfileDto? data)  $default,) {final _that = this;
switch (_that) {
case _ProfileEnvelopeDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProfileDto? data)?  $default,) {final _that = this;
switch (_that) {
case _ProfileEnvelopeDto() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileEnvelopeDto implements ProfileEnvelopeDto {
  const _ProfileEnvelopeDto({this.data});
  factory _ProfileEnvelopeDto.fromJson(Map<String, dynamic> json) => _$ProfileEnvelopeDtoFromJson(json);

@override final  ProfileDto? data;

/// Create a copy of ProfileEnvelopeDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileEnvelopeDtoCopyWith<_ProfileEnvelopeDto> get copyWith => __$ProfileEnvelopeDtoCopyWithImpl<_ProfileEnvelopeDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileEnvelopeDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileEnvelopeDto&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ProfileEnvelopeDto(data: $data)';
}


}

/// @nodoc
abstract mixin class _$ProfileEnvelopeDtoCopyWith<$Res> implements $ProfileEnvelopeDtoCopyWith<$Res> {
  factory _$ProfileEnvelopeDtoCopyWith(_ProfileEnvelopeDto value, $Res Function(_ProfileEnvelopeDto) _then) = __$ProfileEnvelopeDtoCopyWithImpl;
@override @useResult
$Res call({
 ProfileDto? data
});


@override $ProfileDtoCopyWith<$Res>? get data;

}
/// @nodoc
class __$ProfileEnvelopeDtoCopyWithImpl<$Res>
    implements _$ProfileEnvelopeDtoCopyWith<$Res> {
  __$ProfileEnvelopeDtoCopyWithImpl(this._self, this._then);

  final _ProfileEnvelopeDto _self;
  final $Res Function(_ProfileEnvelopeDto) _then;

/// Create a copy of ProfileEnvelopeDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_ProfileEnvelopeDto(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as ProfileDto?,
  ));
}

/// Create a copy of ProfileEnvelopeDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileDtoCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $ProfileDtoCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$ProfileDto {

 int get level; int get experience; int get gold; int get gems;@JsonKey(name: 'current_hp') int? get currentHp;@JsonKey(name: 'current_mp') int? get currentMp; int get fatigue;@JsonKey(name: 'max_fatigue') int get maxFatigue;@JsonKey(name: 'current_map_id') String? get currentMapId; Map<String, dynamic>? get equipment; CharacterInfoDto? get character; List<InjuryDto> get injuries;
/// Create a copy of ProfileDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileDtoCopyWith<ProfileDto> get copyWith => _$ProfileDtoCopyWithImpl<ProfileDto>(this as ProfileDto, _$identity);

  /// Serializes this ProfileDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileDto&&(identical(other.level, level) || other.level == level)&&(identical(other.experience, experience) || other.experience == experience)&&(identical(other.gold, gold) || other.gold == gold)&&(identical(other.gems, gems) || other.gems == gems)&&(identical(other.currentHp, currentHp) || other.currentHp == currentHp)&&(identical(other.currentMp, currentMp) || other.currentMp == currentMp)&&(identical(other.fatigue, fatigue) || other.fatigue == fatigue)&&(identical(other.maxFatigue, maxFatigue) || other.maxFatigue == maxFatigue)&&(identical(other.currentMapId, currentMapId) || other.currentMapId == currentMapId)&&const DeepCollectionEquality().equals(other.equipment, equipment)&&(identical(other.character, character) || other.character == character)&&const DeepCollectionEquality().equals(other.injuries, injuries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,level,experience,gold,gems,currentHp,currentMp,fatigue,maxFatigue,currentMapId,const DeepCollectionEquality().hash(equipment),character,const DeepCollectionEquality().hash(injuries));

@override
String toString() {
  return 'ProfileDto(level: $level, experience: $experience, gold: $gold, gems: $gems, currentHp: $currentHp, currentMp: $currentMp, fatigue: $fatigue, maxFatigue: $maxFatigue, currentMapId: $currentMapId, equipment: $equipment, character: $character, injuries: $injuries)';
}


}

/// @nodoc
abstract mixin class $ProfileDtoCopyWith<$Res>  {
  factory $ProfileDtoCopyWith(ProfileDto value, $Res Function(ProfileDto) _then) = _$ProfileDtoCopyWithImpl;
@useResult
$Res call({
 int level, int experience, int gold, int gems,@JsonKey(name: 'current_hp') int? currentHp,@JsonKey(name: 'current_mp') int? currentMp, int fatigue,@JsonKey(name: 'max_fatigue') int maxFatigue,@JsonKey(name: 'current_map_id') String? currentMapId, Map<String, dynamic>? equipment, CharacterInfoDto? character, List<InjuryDto> injuries
});


$CharacterInfoDtoCopyWith<$Res>? get character;

}
/// @nodoc
class _$ProfileDtoCopyWithImpl<$Res>
    implements $ProfileDtoCopyWith<$Res> {
  _$ProfileDtoCopyWithImpl(this._self, this._then);

  final ProfileDto _self;
  final $Res Function(ProfileDto) _then;

/// Create a copy of ProfileDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? level = null,Object? experience = null,Object? gold = null,Object? gems = null,Object? currentHp = freezed,Object? currentMp = freezed,Object? fatigue = null,Object? maxFatigue = null,Object? currentMapId = freezed,Object? equipment = freezed,Object? character = freezed,Object? injuries = null,}) {
  return _then(_self.copyWith(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,experience: null == experience ? _self.experience : experience // ignore: cast_nullable_to_non_nullable
as int,gold: null == gold ? _self.gold : gold // ignore: cast_nullable_to_non_nullable
as int,gems: null == gems ? _self.gems : gems // ignore: cast_nullable_to_non_nullable
as int,currentHp: freezed == currentHp ? _self.currentHp : currentHp // ignore: cast_nullable_to_non_nullable
as int?,currentMp: freezed == currentMp ? _self.currentMp : currentMp // ignore: cast_nullable_to_non_nullable
as int?,fatigue: null == fatigue ? _self.fatigue : fatigue // ignore: cast_nullable_to_non_nullable
as int,maxFatigue: null == maxFatigue ? _self.maxFatigue : maxFatigue // ignore: cast_nullable_to_non_nullable
as int,currentMapId: freezed == currentMapId ? _self.currentMapId : currentMapId // ignore: cast_nullable_to_non_nullable
as String?,equipment: freezed == equipment ? _self.equipment : equipment // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,character: freezed == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as CharacterInfoDto?,injuries: null == injuries ? _self.injuries : injuries // ignore: cast_nullable_to_non_nullable
as List<InjuryDto>,
  ));
}
/// Create a copy of ProfileDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CharacterInfoDtoCopyWith<$Res>? get character {
    if (_self.character == null) {
    return null;
  }

  return $CharacterInfoDtoCopyWith<$Res>(_self.character!, (value) {
    return _then(_self.copyWith(character: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileDto].
extension ProfileDtoPatterns on ProfileDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileDto value)  $default,){
final _that = this;
switch (_that) {
case _ProfileDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int level,  int experience,  int gold,  int gems, @JsonKey(name: 'current_hp')  int? currentHp, @JsonKey(name: 'current_mp')  int? currentMp,  int fatigue, @JsonKey(name: 'max_fatigue')  int maxFatigue, @JsonKey(name: 'current_map_id')  String? currentMapId,  Map<String, dynamic>? equipment,  CharacterInfoDto? character,  List<InjuryDto> injuries)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileDto() when $default != null:
return $default(_that.level,_that.experience,_that.gold,_that.gems,_that.currentHp,_that.currentMp,_that.fatigue,_that.maxFatigue,_that.currentMapId,_that.equipment,_that.character,_that.injuries);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int level,  int experience,  int gold,  int gems, @JsonKey(name: 'current_hp')  int? currentHp, @JsonKey(name: 'current_mp')  int? currentMp,  int fatigue, @JsonKey(name: 'max_fatigue')  int maxFatigue, @JsonKey(name: 'current_map_id')  String? currentMapId,  Map<String, dynamic>? equipment,  CharacterInfoDto? character,  List<InjuryDto> injuries)  $default,) {final _that = this;
switch (_that) {
case _ProfileDto():
return $default(_that.level,_that.experience,_that.gold,_that.gems,_that.currentHp,_that.currentMp,_that.fatigue,_that.maxFatigue,_that.currentMapId,_that.equipment,_that.character,_that.injuries);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int level,  int experience,  int gold,  int gems, @JsonKey(name: 'current_hp')  int? currentHp, @JsonKey(name: 'current_mp')  int? currentMp,  int fatigue, @JsonKey(name: 'max_fatigue')  int maxFatigue, @JsonKey(name: 'current_map_id')  String? currentMapId,  Map<String, dynamic>? equipment,  CharacterInfoDto? character,  List<InjuryDto> injuries)?  $default,) {final _that = this;
switch (_that) {
case _ProfileDto() when $default != null:
return $default(_that.level,_that.experience,_that.gold,_that.gems,_that.currentHp,_that.currentMp,_that.fatigue,_that.maxFatigue,_that.currentMapId,_that.equipment,_that.character,_that.injuries);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileDto extends ProfileDto {
  const _ProfileDto({this.level = 1, this.experience = 0, this.gold = 0, this.gems = 0, @JsonKey(name: 'current_hp') this.currentHp, @JsonKey(name: 'current_mp') this.currentMp, this.fatigue = 0, @JsonKey(name: 'max_fatigue') this.maxFatigue = 100, @JsonKey(name: 'current_map_id') this.currentMapId, final  Map<String, dynamic>? equipment, this.character, final  List<InjuryDto> injuries = const <InjuryDto>[]}): _equipment = equipment,_injuries = injuries,super._();
  factory _ProfileDto.fromJson(Map<String, dynamic> json) => _$ProfileDtoFromJson(json);

@override@JsonKey() final  int level;
@override@JsonKey() final  int experience;
@override@JsonKey() final  int gold;
@override@JsonKey() final  int gems;
@override@JsonKey(name: 'current_hp') final  int? currentHp;
@override@JsonKey(name: 'current_mp') final  int? currentMp;
@override@JsonKey() final  int fatigue;
@override@JsonKey(name: 'max_fatigue') final  int maxFatigue;
@override@JsonKey(name: 'current_map_id') final  String? currentMapId;
 final  Map<String, dynamic>? _equipment;
@override Map<String, dynamic>? get equipment {
  final value = _equipment;
  if (value == null) return null;
  if (_equipment is EqualUnmodifiableMapView) return _equipment;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  CharacterInfoDto? character;
 final  List<InjuryDto> _injuries;
@override@JsonKey() List<InjuryDto> get injuries {
  if (_injuries is EqualUnmodifiableListView) return _injuries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_injuries);
}


/// Create a copy of ProfileDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileDtoCopyWith<_ProfileDto> get copyWith => __$ProfileDtoCopyWithImpl<_ProfileDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileDto&&(identical(other.level, level) || other.level == level)&&(identical(other.experience, experience) || other.experience == experience)&&(identical(other.gold, gold) || other.gold == gold)&&(identical(other.gems, gems) || other.gems == gems)&&(identical(other.currentHp, currentHp) || other.currentHp == currentHp)&&(identical(other.currentMp, currentMp) || other.currentMp == currentMp)&&(identical(other.fatigue, fatigue) || other.fatigue == fatigue)&&(identical(other.maxFatigue, maxFatigue) || other.maxFatigue == maxFatigue)&&(identical(other.currentMapId, currentMapId) || other.currentMapId == currentMapId)&&const DeepCollectionEquality().equals(other._equipment, _equipment)&&(identical(other.character, character) || other.character == character)&&const DeepCollectionEquality().equals(other._injuries, _injuries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,level,experience,gold,gems,currentHp,currentMp,fatigue,maxFatigue,currentMapId,const DeepCollectionEquality().hash(_equipment),character,const DeepCollectionEquality().hash(_injuries));

@override
String toString() {
  return 'ProfileDto(level: $level, experience: $experience, gold: $gold, gems: $gems, currentHp: $currentHp, currentMp: $currentMp, fatigue: $fatigue, maxFatigue: $maxFatigue, currentMapId: $currentMapId, equipment: $equipment, character: $character, injuries: $injuries)';
}


}

/// @nodoc
abstract mixin class _$ProfileDtoCopyWith<$Res> implements $ProfileDtoCopyWith<$Res> {
  factory _$ProfileDtoCopyWith(_ProfileDto value, $Res Function(_ProfileDto) _then) = __$ProfileDtoCopyWithImpl;
@override @useResult
$Res call({
 int level, int experience, int gold, int gems,@JsonKey(name: 'current_hp') int? currentHp,@JsonKey(name: 'current_mp') int? currentMp, int fatigue,@JsonKey(name: 'max_fatigue') int maxFatigue,@JsonKey(name: 'current_map_id') String? currentMapId, Map<String, dynamic>? equipment, CharacterInfoDto? character, List<InjuryDto> injuries
});


@override $CharacterInfoDtoCopyWith<$Res>? get character;

}
/// @nodoc
class __$ProfileDtoCopyWithImpl<$Res>
    implements _$ProfileDtoCopyWith<$Res> {
  __$ProfileDtoCopyWithImpl(this._self, this._then);

  final _ProfileDto _self;
  final $Res Function(_ProfileDto) _then;

/// Create a copy of ProfileDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? level = null,Object? experience = null,Object? gold = null,Object? gems = null,Object? currentHp = freezed,Object? currentMp = freezed,Object? fatigue = null,Object? maxFatigue = null,Object? currentMapId = freezed,Object? equipment = freezed,Object? character = freezed,Object? injuries = null,}) {
  return _then(_ProfileDto(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,experience: null == experience ? _self.experience : experience // ignore: cast_nullable_to_non_nullable
as int,gold: null == gold ? _self.gold : gold // ignore: cast_nullable_to_non_nullable
as int,gems: null == gems ? _self.gems : gems // ignore: cast_nullable_to_non_nullable
as int,currentHp: freezed == currentHp ? _self.currentHp : currentHp // ignore: cast_nullable_to_non_nullable
as int?,currentMp: freezed == currentMp ? _self.currentMp : currentMp // ignore: cast_nullable_to_non_nullable
as int?,fatigue: null == fatigue ? _self.fatigue : fatigue // ignore: cast_nullable_to_non_nullable
as int,maxFatigue: null == maxFatigue ? _self.maxFatigue : maxFatigue // ignore: cast_nullable_to_non_nullable
as int,currentMapId: freezed == currentMapId ? _self.currentMapId : currentMapId // ignore: cast_nullable_to_non_nullable
as String?,equipment: freezed == equipment ? _self._equipment : equipment // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,character: freezed == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as CharacterInfoDto?,injuries: null == injuries ? _self._injuries : injuries // ignore: cast_nullable_to_non_nullable
as List<InjuryDto>,
  ));
}

/// Create a copy of ProfileDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CharacterInfoDtoCopyWith<$Res>? get character {
    if (_self.character == null) {
    return null;
  }

  return $CharacterInfoDtoCopyWith<$Res>(_self.character!, (value) {
    return _then(_self.copyWith(character: value));
  });
}
}


/// @nodoc
mixin _$InjuryDto {

 String get type; String? get source; String? get occurredAt; String? get naturalHealAt;
/// Create a copy of InjuryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InjuryDtoCopyWith<InjuryDto> get copyWith => _$InjuryDtoCopyWithImpl<InjuryDto>(this as InjuryDto, _$identity);

  /// Serializes this InjuryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InjuryDto&&(identical(other.type, type) || other.type == type)&&(identical(other.source, source) || other.source == source)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&(identical(other.naturalHealAt, naturalHealAt) || other.naturalHealAt == naturalHealAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,source,occurredAt,naturalHealAt);

@override
String toString() {
  return 'InjuryDto(type: $type, source: $source, occurredAt: $occurredAt, naturalHealAt: $naturalHealAt)';
}


}

/// @nodoc
abstract mixin class $InjuryDtoCopyWith<$Res>  {
  factory $InjuryDtoCopyWith(InjuryDto value, $Res Function(InjuryDto) _then) = _$InjuryDtoCopyWithImpl;
@useResult
$Res call({
 String type, String? source, String? occurredAt, String? naturalHealAt
});




}
/// @nodoc
class _$InjuryDtoCopyWithImpl<$Res>
    implements $InjuryDtoCopyWith<$Res> {
  _$InjuryDtoCopyWithImpl(this._self, this._then);

  final InjuryDto _self;
  final $Res Function(InjuryDto) _then;

/// Create a copy of InjuryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? source = freezed,Object? occurredAt = freezed,Object? naturalHealAt = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,occurredAt: freezed == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as String?,naturalHealAt: freezed == naturalHealAt ? _self.naturalHealAt : naturalHealAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [InjuryDto].
extension InjuryDtoPatterns on InjuryDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InjuryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InjuryDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InjuryDto value)  $default,){
final _that = this;
switch (_that) {
case _InjuryDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InjuryDto value)?  $default,){
final _that = this;
switch (_that) {
case _InjuryDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String? source,  String? occurredAt,  String? naturalHealAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InjuryDto() when $default != null:
return $default(_that.type,_that.source,_that.occurredAt,_that.naturalHealAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String? source,  String? occurredAt,  String? naturalHealAt)  $default,) {final _that = this;
switch (_that) {
case _InjuryDto():
return $default(_that.type,_that.source,_that.occurredAt,_that.naturalHealAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String? source,  String? occurredAt,  String? naturalHealAt)?  $default,) {final _that = this;
switch (_that) {
case _InjuryDto() when $default != null:
return $default(_that.type,_that.source,_that.occurredAt,_that.naturalHealAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InjuryDto extends InjuryDto {
  const _InjuryDto({this.type = 'light', this.source, this.occurredAt, this.naturalHealAt}): super._();
  factory _InjuryDto.fromJson(Map<String, dynamic> json) => _$InjuryDtoFromJson(json);

@override@JsonKey() final  String type;
@override final  String? source;
@override final  String? occurredAt;
@override final  String? naturalHealAt;

/// Create a copy of InjuryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InjuryDtoCopyWith<_InjuryDto> get copyWith => __$InjuryDtoCopyWithImpl<_InjuryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InjuryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InjuryDto&&(identical(other.type, type) || other.type == type)&&(identical(other.source, source) || other.source == source)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt)&&(identical(other.naturalHealAt, naturalHealAt) || other.naturalHealAt == naturalHealAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,source,occurredAt,naturalHealAt);

@override
String toString() {
  return 'InjuryDto(type: $type, source: $source, occurredAt: $occurredAt, naturalHealAt: $naturalHealAt)';
}


}

/// @nodoc
abstract mixin class _$InjuryDtoCopyWith<$Res> implements $InjuryDtoCopyWith<$Res> {
  factory _$InjuryDtoCopyWith(_InjuryDto value, $Res Function(_InjuryDto) _then) = __$InjuryDtoCopyWithImpl;
@override @useResult
$Res call({
 String type, String? source, String? occurredAt, String? naturalHealAt
});




}
/// @nodoc
class __$InjuryDtoCopyWithImpl<$Res>
    implements _$InjuryDtoCopyWith<$Res> {
  __$InjuryDtoCopyWithImpl(this._self, this._then);

  final _InjuryDto _self;
  final $Res Function(_InjuryDto) _then;

/// Create a copy of InjuryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? source = freezed,Object? occurredAt = freezed,Object? naturalHealAt = freezed,}) {
  return _then(_InjuryDto(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,occurredAt: freezed == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as String?,naturalHealAt: freezed == naturalHealAt ? _self.naturalHealAt : naturalHealAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CharacterInfoDto {

 String get name; StatsDto get stats;
/// Create a copy of CharacterInfoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterInfoDtoCopyWith<CharacterInfoDto> get copyWith => _$CharacterInfoDtoCopyWithImpl<CharacterInfoDto>(this as CharacterInfoDto, _$identity);

  /// Serializes this CharacterInfoDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterInfoDto&&(identical(other.name, name) || other.name == name)&&(identical(other.stats, stats) || other.stats == stats));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,stats);

@override
String toString() {
  return 'CharacterInfoDto(name: $name, stats: $stats)';
}


}

/// @nodoc
abstract mixin class $CharacterInfoDtoCopyWith<$Res>  {
  factory $CharacterInfoDtoCopyWith(CharacterInfoDto value, $Res Function(CharacterInfoDto) _then) = _$CharacterInfoDtoCopyWithImpl;
@useResult
$Res call({
 String name, StatsDto stats
});


$StatsDtoCopyWith<$Res> get stats;

}
/// @nodoc
class _$CharacterInfoDtoCopyWithImpl<$Res>
    implements $CharacterInfoDtoCopyWith<$Res> {
  _$CharacterInfoDtoCopyWithImpl(this._self, this._then);

  final CharacterInfoDto _self;
  final $Res Function(CharacterInfoDto) _then;

/// Create a copy of CharacterInfoDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? stats = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as StatsDto,
  ));
}
/// Create a copy of CharacterInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatsDtoCopyWith<$Res> get stats {
  
  return $StatsDtoCopyWith<$Res>(_self.stats, (value) {
    return _then(_self.copyWith(stats: value));
  });
}
}


/// Adds pattern-matching-related methods to [CharacterInfoDto].
extension CharacterInfoDtoPatterns on CharacterInfoDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CharacterInfoDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CharacterInfoDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CharacterInfoDto value)  $default,){
final _that = this;
switch (_that) {
case _CharacterInfoDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CharacterInfoDto value)?  $default,){
final _that = this;
switch (_that) {
case _CharacterInfoDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  StatsDto stats)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CharacterInfoDto() when $default != null:
return $default(_that.name,_that.stats);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  StatsDto stats)  $default,) {final _that = this;
switch (_that) {
case _CharacterInfoDto():
return $default(_that.name,_that.stats);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  StatsDto stats)?  $default,) {final _that = this;
switch (_that) {
case _CharacterInfoDto() when $default != null:
return $default(_that.name,_that.stats);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CharacterInfoDto implements CharacterInfoDto {
  const _CharacterInfoDto({this.name = '모험가', this.stats = const StatsDto()});
  factory _CharacterInfoDto.fromJson(Map<String, dynamic> json) => _$CharacterInfoDtoFromJson(json);

@override@JsonKey() final  String name;
@override@JsonKey() final  StatsDto stats;

/// Create a copy of CharacterInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharacterInfoDtoCopyWith<_CharacterInfoDto> get copyWith => __$CharacterInfoDtoCopyWithImpl<_CharacterInfoDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CharacterInfoDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CharacterInfoDto&&(identical(other.name, name) || other.name == name)&&(identical(other.stats, stats) || other.stats == stats));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,stats);

@override
String toString() {
  return 'CharacterInfoDto(name: $name, stats: $stats)';
}


}

/// @nodoc
abstract mixin class _$CharacterInfoDtoCopyWith<$Res> implements $CharacterInfoDtoCopyWith<$Res> {
  factory _$CharacterInfoDtoCopyWith(_CharacterInfoDto value, $Res Function(_CharacterInfoDto) _then) = __$CharacterInfoDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, StatsDto stats
});


@override $StatsDtoCopyWith<$Res> get stats;

}
/// @nodoc
class __$CharacterInfoDtoCopyWithImpl<$Res>
    implements _$CharacterInfoDtoCopyWith<$Res> {
  __$CharacterInfoDtoCopyWithImpl(this._self, this._then);

  final _CharacterInfoDto _self;
  final $Res Function(_CharacterInfoDto) _then;

/// Create a copy of CharacterInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? stats = null,}) {
  return _then(_CharacterInfoDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as StatsDto,
  ));
}

/// Create a copy of CharacterInfoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatsDtoCopyWith<$Res> get stats {
  
  return $StatsDtoCopyWith<$Res>(_self.stats, (value) {
    return _then(_self.copyWith(stats: value));
  });
}
}


/// @nodoc
mixin _$StatsDto {

 int get str; int get dex; int get con;@JsonKey(name: 'int') int get intelligence; int get wis; int get cha; int get lck;
/// Create a copy of StatsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatsDtoCopyWith<StatsDto> get copyWith => _$StatsDtoCopyWithImpl<StatsDto>(this as StatsDto, _$identity);

  /// Serializes this StatsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatsDto&&(identical(other.str, str) || other.str == str)&&(identical(other.dex, dex) || other.dex == dex)&&(identical(other.con, con) || other.con == con)&&(identical(other.intelligence, intelligence) || other.intelligence == intelligence)&&(identical(other.wis, wis) || other.wis == wis)&&(identical(other.cha, cha) || other.cha == cha)&&(identical(other.lck, lck) || other.lck == lck));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,str,dex,con,intelligence,wis,cha,lck);

@override
String toString() {
  return 'StatsDto(str: $str, dex: $dex, con: $con, intelligence: $intelligence, wis: $wis, cha: $cha, lck: $lck)';
}


}

/// @nodoc
abstract mixin class $StatsDtoCopyWith<$Res>  {
  factory $StatsDtoCopyWith(StatsDto value, $Res Function(StatsDto) _then) = _$StatsDtoCopyWithImpl;
@useResult
$Res call({
 int str, int dex, int con,@JsonKey(name: 'int') int intelligence, int wis, int cha, int lck
});




}
/// @nodoc
class _$StatsDtoCopyWithImpl<$Res>
    implements $StatsDtoCopyWith<$Res> {
  _$StatsDtoCopyWithImpl(this._self, this._then);

  final StatsDto _self;
  final $Res Function(StatsDto) _then;

/// Create a copy of StatsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? str = null,Object? dex = null,Object? con = null,Object? intelligence = null,Object? wis = null,Object? cha = null,Object? lck = null,}) {
  return _then(_self.copyWith(
str: null == str ? _self.str : str // ignore: cast_nullable_to_non_nullable
as int,dex: null == dex ? _self.dex : dex // ignore: cast_nullable_to_non_nullable
as int,con: null == con ? _self.con : con // ignore: cast_nullable_to_non_nullable
as int,intelligence: null == intelligence ? _self.intelligence : intelligence // ignore: cast_nullable_to_non_nullable
as int,wis: null == wis ? _self.wis : wis // ignore: cast_nullable_to_non_nullable
as int,cha: null == cha ? _self.cha : cha // ignore: cast_nullable_to_non_nullable
as int,lck: null == lck ? _self.lck : lck // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [StatsDto].
extension StatsDtoPatterns on StatsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatsDto value)  $default,){
final _that = this;
switch (_that) {
case _StatsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatsDto value)?  $default,){
final _that = this;
switch (_that) {
case _StatsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int str,  int dex,  int con, @JsonKey(name: 'int')  int intelligence,  int wis,  int cha,  int lck)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatsDto() when $default != null:
return $default(_that.str,_that.dex,_that.con,_that.intelligence,_that.wis,_that.cha,_that.lck);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int str,  int dex,  int con, @JsonKey(name: 'int')  int intelligence,  int wis,  int cha,  int lck)  $default,) {final _that = this;
switch (_that) {
case _StatsDto():
return $default(_that.str,_that.dex,_that.con,_that.intelligence,_that.wis,_that.cha,_that.lck);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int str,  int dex,  int con, @JsonKey(name: 'int')  int intelligence,  int wis,  int cha,  int lck)?  $default,) {final _that = this;
switch (_that) {
case _StatsDto() when $default != null:
return $default(_that.str,_that.dex,_that.con,_that.intelligence,_that.wis,_that.cha,_that.lck);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StatsDto implements StatsDto {
  const _StatsDto({this.str = 10, this.dex = 10, this.con = 10, @JsonKey(name: 'int') this.intelligence = 10, this.wis = 10, this.cha = 10, this.lck = 10});
  factory _StatsDto.fromJson(Map<String, dynamic> json) => _$StatsDtoFromJson(json);

@override@JsonKey() final  int str;
@override@JsonKey() final  int dex;
@override@JsonKey() final  int con;
@override@JsonKey(name: 'int') final  int intelligence;
@override@JsonKey() final  int wis;
@override@JsonKey() final  int cha;
@override@JsonKey() final  int lck;

/// Create a copy of StatsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatsDtoCopyWith<_StatsDto> get copyWith => __$StatsDtoCopyWithImpl<_StatsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatsDto&&(identical(other.str, str) || other.str == str)&&(identical(other.dex, dex) || other.dex == dex)&&(identical(other.con, con) || other.con == con)&&(identical(other.intelligence, intelligence) || other.intelligence == intelligence)&&(identical(other.wis, wis) || other.wis == wis)&&(identical(other.cha, cha) || other.cha == cha)&&(identical(other.lck, lck) || other.lck == lck));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,str,dex,con,intelligence,wis,cha,lck);

@override
String toString() {
  return 'StatsDto(str: $str, dex: $dex, con: $con, intelligence: $intelligence, wis: $wis, cha: $cha, lck: $lck)';
}


}

/// @nodoc
abstract mixin class _$StatsDtoCopyWith<$Res> implements $StatsDtoCopyWith<$Res> {
  factory _$StatsDtoCopyWith(_StatsDto value, $Res Function(_StatsDto) _then) = __$StatsDtoCopyWithImpl;
@override @useResult
$Res call({
 int str, int dex, int con,@JsonKey(name: 'int') int intelligence, int wis, int cha, int lck
});




}
/// @nodoc
class __$StatsDtoCopyWithImpl<$Res>
    implements _$StatsDtoCopyWith<$Res> {
  __$StatsDtoCopyWithImpl(this._self, this._then);

  final _StatsDto _self;
  final $Res Function(_StatsDto) _then;

/// Create a copy of StatsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? str = null,Object? dex = null,Object? con = null,Object? intelligence = null,Object? wis = null,Object? cha = null,Object? lck = null,}) {
  return _then(_StatsDto(
str: null == str ? _self.str : str // ignore: cast_nullable_to_non_nullable
as int,dex: null == dex ? _self.dex : dex // ignore: cast_nullable_to_non_nullable
as int,con: null == con ? _self.con : con // ignore: cast_nullable_to_non_nullable
as int,intelligence: null == intelligence ? _self.intelligence : intelligence // ignore: cast_nullable_to_non_nullable
as int,wis: null == wis ? _self.wis : wis // ignore: cast_nullable_to_non_nullable
as int,cha: null == cha ? _self.cha : cha // ignore: cast_nullable_to_non_nullable
as int,lck: null == lck ? _self.lck : lck // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
