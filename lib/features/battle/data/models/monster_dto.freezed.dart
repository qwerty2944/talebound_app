// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monster_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MonsterListDto {

 List<MonsterDto> get monsters;
/// Create a copy of MonsterListDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MonsterListDtoCopyWith<MonsterListDto> get copyWith => _$MonsterListDtoCopyWithImpl<MonsterListDto>(this as MonsterListDto, _$identity);

  /// Serializes this MonsterListDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MonsterListDto&&const DeepCollectionEquality().equals(other.monsters, monsters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(monsters));

@override
String toString() {
  return 'MonsterListDto(monsters: $monsters)';
}


}

/// @nodoc
abstract mixin class $MonsterListDtoCopyWith<$Res>  {
  factory $MonsterListDtoCopyWith(MonsterListDto value, $Res Function(MonsterListDto) _then) = _$MonsterListDtoCopyWithImpl;
@useResult
$Res call({
 List<MonsterDto> monsters
});




}
/// @nodoc
class _$MonsterListDtoCopyWithImpl<$Res>
    implements $MonsterListDtoCopyWith<$Res> {
  _$MonsterListDtoCopyWithImpl(this._self, this._then);

  final MonsterListDto _self;
  final $Res Function(MonsterListDto) _then;

/// Create a copy of MonsterListDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? monsters = null,}) {
  return _then(_self.copyWith(
monsters: null == monsters ? _self.monsters : monsters // ignore: cast_nullable_to_non_nullable
as List<MonsterDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [MonsterListDto].
extension MonsterListDtoPatterns on MonsterListDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MonsterListDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MonsterListDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MonsterListDto value)  $default,){
final _that = this;
switch (_that) {
case _MonsterListDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MonsterListDto value)?  $default,){
final _that = this;
switch (_that) {
case _MonsterListDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MonsterDto> monsters)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MonsterListDto() when $default != null:
return $default(_that.monsters);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MonsterDto> monsters)  $default,) {final _that = this;
switch (_that) {
case _MonsterListDto():
return $default(_that.monsters);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MonsterDto> monsters)?  $default,) {final _that = this;
switch (_that) {
case _MonsterListDto() when $default != null:
return $default(_that.monsters);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MonsterListDto implements MonsterListDto {
  const _MonsterListDto({final  List<MonsterDto> monsters = const <MonsterDto>[]}): _monsters = monsters;
  factory _MonsterListDto.fromJson(Map<String, dynamic> json) => _$MonsterListDtoFromJson(json);

 final  List<MonsterDto> _monsters;
@override@JsonKey() List<MonsterDto> get monsters {
  if (_monsters is EqualUnmodifiableListView) return _monsters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_monsters);
}


/// Create a copy of MonsterListDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MonsterListDtoCopyWith<_MonsterListDto> get copyWith => __$MonsterListDtoCopyWithImpl<_MonsterListDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MonsterListDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MonsterListDto&&const DeepCollectionEquality().equals(other._monsters, _monsters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_monsters));

@override
String toString() {
  return 'MonsterListDto(monsters: $monsters)';
}


}

/// @nodoc
abstract mixin class _$MonsterListDtoCopyWith<$Res> implements $MonsterListDtoCopyWith<$Res> {
  factory _$MonsterListDtoCopyWith(_MonsterListDto value, $Res Function(_MonsterListDto) _then) = __$MonsterListDtoCopyWithImpl;
@override @useResult
$Res call({
 List<MonsterDto> monsters
});




}
/// @nodoc
class __$MonsterListDtoCopyWithImpl<$Res>
    implements _$MonsterListDtoCopyWith<$Res> {
  __$MonsterListDtoCopyWithImpl(this._self, this._then);

  final _MonsterListDto _self;
  final $Res Function(_MonsterListDto) _then;

/// Create a copy of MonsterListDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? monsters = null,}) {
  return _then(_MonsterListDto(
monsters: null == monsters ? _self._monsters : monsters // ignore: cast_nullable_to_non_nullable
as List<MonsterDto>,
  ));
}


}


/// @nodoc
mixin _$MonsterDto {

 String get id; String get nameKo; String get icon; String get rank; int get level; String get element; List<String> get mapIds; int get hp; int get attack; int get defense; int get speed; int get exp; int get gold;
/// Create a copy of MonsterDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MonsterDtoCopyWith<MonsterDto> get copyWith => _$MonsterDtoCopyWithImpl<MonsterDto>(this as MonsterDto, _$identity);

  /// Serializes this MonsterDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MonsterDto&&(identical(other.id, id) || other.id == id)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.level, level) || other.level == level)&&(identical(other.element, element) || other.element == element)&&const DeepCollectionEquality().equals(other.mapIds, mapIds)&&(identical(other.hp, hp) || other.hp == hp)&&(identical(other.attack, attack) || other.attack == attack)&&(identical(other.defense, defense) || other.defense == defense)&&(identical(other.speed, speed) || other.speed == speed)&&(identical(other.exp, exp) || other.exp == exp)&&(identical(other.gold, gold) || other.gold == gold));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameKo,icon,rank,level,element,const DeepCollectionEquality().hash(mapIds),hp,attack,defense,speed,exp,gold);

@override
String toString() {
  return 'MonsterDto(id: $id, nameKo: $nameKo, icon: $icon, rank: $rank, level: $level, element: $element, mapIds: $mapIds, hp: $hp, attack: $attack, defense: $defense, speed: $speed, exp: $exp, gold: $gold)';
}


}

/// @nodoc
abstract mixin class $MonsterDtoCopyWith<$Res>  {
  factory $MonsterDtoCopyWith(MonsterDto value, $Res Function(MonsterDto) _then) = _$MonsterDtoCopyWithImpl;
@useResult
$Res call({
 String id, String nameKo, String icon, String rank, int level, String element, List<String> mapIds, int hp, int attack, int defense, int speed, int exp, int gold
});




}
/// @nodoc
class _$MonsterDtoCopyWithImpl<$Res>
    implements $MonsterDtoCopyWith<$Res> {
  _$MonsterDtoCopyWithImpl(this._self, this._then);

  final MonsterDto _self;
  final $Res Function(MonsterDto) _then;

/// Create a copy of MonsterDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nameKo = null,Object? icon = null,Object? rank = null,Object? level = null,Object? element = null,Object? mapIds = null,Object? hp = null,Object? attack = null,Object? defense = null,Object? speed = null,Object? exp = null,Object? gold = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,element: null == element ? _self.element : element // ignore: cast_nullable_to_non_nullable
as String,mapIds: null == mapIds ? _self.mapIds : mapIds // ignore: cast_nullable_to_non_nullable
as List<String>,hp: null == hp ? _self.hp : hp // ignore: cast_nullable_to_non_nullable
as int,attack: null == attack ? _self.attack : attack // ignore: cast_nullable_to_non_nullable
as int,defense: null == defense ? _self.defense : defense // ignore: cast_nullable_to_non_nullable
as int,speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as int,exp: null == exp ? _self.exp : exp // ignore: cast_nullable_to_non_nullable
as int,gold: null == gold ? _self.gold : gold // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MonsterDto].
extension MonsterDtoPatterns on MonsterDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MonsterDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MonsterDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MonsterDto value)  $default,){
final _that = this;
switch (_that) {
case _MonsterDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MonsterDto value)?  $default,){
final _that = this;
switch (_that) {
case _MonsterDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String nameKo,  String icon,  String rank,  int level,  String element,  List<String> mapIds,  int hp,  int attack,  int defense,  int speed,  int exp,  int gold)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MonsterDto() when $default != null:
return $default(_that.id,_that.nameKo,_that.icon,_that.rank,_that.level,_that.element,_that.mapIds,_that.hp,_that.attack,_that.defense,_that.speed,_that.exp,_that.gold);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String nameKo,  String icon,  String rank,  int level,  String element,  List<String> mapIds,  int hp,  int attack,  int defense,  int speed,  int exp,  int gold)  $default,) {final _that = this;
switch (_that) {
case _MonsterDto():
return $default(_that.id,_that.nameKo,_that.icon,_that.rank,_that.level,_that.element,_that.mapIds,_that.hp,_that.attack,_that.defense,_that.speed,_that.exp,_that.gold);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String nameKo,  String icon,  String rank,  int level,  String element,  List<String> mapIds,  int hp,  int attack,  int defense,  int speed,  int exp,  int gold)?  $default,) {final _that = this;
switch (_that) {
case _MonsterDto() when $default != null:
return $default(_that.id,_that.nameKo,_that.icon,_that.rank,_that.level,_that.element,_that.mapIds,_that.hp,_that.attack,_that.defense,_that.speed,_that.exp,_that.gold);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MonsterDto extends MonsterDto {
  const _MonsterDto({required this.id, this.nameKo = '몬스터', this.icon = '👾', this.rank = 'normal', this.level = 1, this.element = 'none', final  List<String> mapIds = const <String>[], this.hp = 30, this.attack = 5, this.defense = 0, this.speed = 5, this.exp = 0, this.gold = 0}): _mapIds = mapIds,super._();
  factory _MonsterDto.fromJson(Map<String, dynamic> json) => _$MonsterDtoFromJson(json);

@override final  String id;
@override@JsonKey() final  String nameKo;
@override@JsonKey() final  String icon;
@override@JsonKey() final  String rank;
@override@JsonKey() final  int level;
@override@JsonKey() final  String element;
 final  List<String> _mapIds;
@override@JsonKey() List<String> get mapIds {
  if (_mapIds is EqualUnmodifiableListView) return _mapIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mapIds);
}

@override@JsonKey() final  int hp;
@override@JsonKey() final  int attack;
@override@JsonKey() final  int defense;
@override@JsonKey() final  int speed;
@override@JsonKey() final  int exp;
@override@JsonKey() final  int gold;

/// Create a copy of MonsterDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MonsterDtoCopyWith<_MonsterDto> get copyWith => __$MonsterDtoCopyWithImpl<_MonsterDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MonsterDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MonsterDto&&(identical(other.id, id) || other.id == id)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.level, level) || other.level == level)&&(identical(other.element, element) || other.element == element)&&const DeepCollectionEquality().equals(other._mapIds, _mapIds)&&(identical(other.hp, hp) || other.hp == hp)&&(identical(other.attack, attack) || other.attack == attack)&&(identical(other.defense, defense) || other.defense == defense)&&(identical(other.speed, speed) || other.speed == speed)&&(identical(other.exp, exp) || other.exp == exp)&&(identical(other.gold, gold) || other.gold == gold));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameKo,icon,rank,level,element,const DeepCollectionEquality().hash(_mapIds),hp,attack,defense,speed,exp,gold);

@override
String toString() {
  return 'MonsterDto(id: $id, nameKo: $nameKo, icon: $icon, rank: $rank, level: $level, element: $element, mapIds: $mapIds, hp: $hp, attack: $attack, defense: $defense, speed: $speed, exp: $exp, gold: $gold)';
}


}

/// @nodoc
abstract mixin class _$MonsterDtoCopyWith<$Res> implements $MonsterDtoCopyWith<$Res> {
  factory _$MonsterDtoCopyWith(_MonsterDto value, $Res Function(_MonsterDto) _then) = __$MonsterDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String nameKo, String icon, String rank, int level, String element, List<String> mapIds, int hp, int attack, int defense, int speed, int exp, int gold
});




}
/// @nodoc
class __$MonsterDtoCopyWithImpl<$Res>
    implements _$MonsterDtoCopyWith<$Res> {
  __$MonsterDtoCopyWithImpl(this._self, this._then);

  final _MonsterDto _self;
  final $Res Function(_MonsterDto) _then;

/// Create a copy of MonsterDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nameKo = null,Object? icon = null,Object? rank = null,Object? level = null,Object? element = null,Object? mapIds = null,Object? hp = null,Object? attack = null,Object? defense = null,Object? speed = null,Object? exp = null,Object? gold = null,}) {
  return _then(_MonsterDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as String,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,element: null == element ? _self.element : element // ignore: cast_nullable_to_non_nullable
as String,mapIds: null == mapIds ? _self._mapIds : mapIds // ignore: cast_nullable_to_non_nullable
as List<String>,hp: null == hp ? _self.hp : hp // ignore: cast_nullable_to_non_nullable
as int,attack: null == attack ? _self.attack : attack // ignore: cast_nullable_to_non_nullable
as int,defense: null == defense ? _self.defense : defense // ignore: cast_nullable_to_non_nullable
as int,speed: null == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as int,exp: null == exp ? _self.exp : exp // ignore: cast_nullable_to_non_nullable
as int,gold: null == gold ? _self.gold : gold // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
