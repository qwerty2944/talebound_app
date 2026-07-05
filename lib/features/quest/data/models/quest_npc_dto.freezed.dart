// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quest_npc_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuestNpcCatalogDto {

 List<QuestNpcDto> get npcs;
/// Create a copy of QuestNpcCatalogDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestNpcCatalogDtoCopyWith<QuestNpcCatalogDto> get copyWith => _$QuestNpcCatalogDtoCopyWithImpl<QuestNpcCatalogDto>(this as QuestNpcCatalogDto, _$identity);

  /// Serializes this QuestNpcCatalogDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestNpcCatalogDto&&const DeepCollectionEquality().equals(other.npcs, npcs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(npcs));

@override
String toString() {
  return 'QuestNpcCatalogDto(npcs: $npcs)';
}


}

/// @nodoc
abstract mixin class $QuestNpcCatalogDtoCopyWith<$Res>  {
  factory $QuestNpcCatalogDtoCopyWith(QuestNpcCatalogDto value, $Res Function(QuestNpcCatalogDto) _then) = _$QuestNpcCatalogDtoCopyWithImpl;
@useResult
$Res call({
 List<QuestNpcDto> npcs
});




}
/// @nodoc
class _$QuestNpcCatalogDtoCopyWithImpl<$Res>
    implements $QuestNpcCatalogDtoCopyWith<$Res> {
  _$QuestNpcCatalogDtoCopyWithImpl(this._self, this._then);

  final QuestNpcCatalogDto _self;
  final $Res Function(QuestNpcCatalogDto) _then;

/// Create a copy of QuestNpcCatalogDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? npcs = null,}) {
  return _then(_self.copyWith(
npcs: null == npcs ? _self.npcs : npcs // ignore: cast_nullable_to_non_nullable
as List<QuestNpcDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [QuestNpcCatalogDto].
extension QuestNpcCatalogDtoPatterns on QuestNpcCatalogDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestNpcCatalogDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestNpcCatalogDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestNpcCatalogDto value)  $default,){
final _that = this;
switch (_that) {
case _QuestNpcCatalogDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestNpcCatalogDto value)?  $default,){
final _that = this;
switch (_that) {
case _QuestNpcCatalogDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<QuestNpcDto> npcs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestNpcCatalogDto() when $default != null:
return $default(_that.npcs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<QuestNpcDto> npcs)  $default,) {final _that = this;
switch (_that) {
case _QuestNpcCatalogDto():
return $default(_that.npcs);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<QuestNpcDto> npcs)?  $default,) {final _that = this;
switch (_that) {
case _QuestNpcCatalogDto() when $default != null:
return $default(_that.npcs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuestNpcCatalogDto implements QuestNpcCatalogDto {
  const _QuestNpcCatalogDto({final  List<QuestNpcDto> npcs = const <QuestNpcDto>[]}): _npcs = npcs;
  factory _QuestNpcCatalogDto.fromJson(Map<String, dynamic> json) => _$QuestNpcCatalogDtoFromJson(json);

 final  List<QuestNpcDto> _npcs;
@override@JsonKey() List<QuestNpcDto> get npcs {
  if (_npcs is EqualUnmodifiableListView) return _npcs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_npcs);
}


/// Create a copy of QuestNpcCatalogDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestNpcCatalogDtoCopyWith<_QuestNpcCatalogDto> get copyWith => __$QuestNpcCatalogDtoCopyWithImpl<_QuestNpcCatalogDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestNpcCatalogDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestNpcCatalogDto&&const DeepCollectionEquality().equals(other._npcs, _npcs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_npcs));

@override
String toString() {
  return 'QuestNpcCatalogDto(npcs: $npcs)';
}


}

/// @nodoc
abstract mixin class _$QuestNpcCatalogDtoCopyWith<$Res> implements $QuestNpcCatalogDtoCopyWith<$Res> {
  factory _$QuestNpcCatalogDtoCopyWith(_QuestNpcCatalogDto value, $Res Function(_QuestNpcCatalogDto) _then) = __$QuestNpcCatalogDtoCopyWithImpl;
@override @useResult
$Res call({
 List<QuestNpcDto> npcs
});




}
/// @nodoc
class __$QuestNpcCatalogDtoCopyWithImpl<$Res>
    implements _$QuestNpcCatalogDtoCopyWith<$Res> {
  __$QuestNpcCatalogDtoCopyWithImpl(this._self, this._then);

  final _QuestNpcCatalogDto _self;
  final $Res Function(_QuestNpcCatalogDto) _then;

/// Create a copy of QuestNpcCatalogDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? npcs = null,}) {
  return _then(_QuestNpcCatalogDto(
npcs: null == npcs ? _self._npcs : npcs // ignore: cast_nullable_to_non_nullable
as List<QuestNpcDto>,
  ));
}


}


/// @nodoc
mixin _$QuestNpcDto {

 String get id; String get nameKo; String get icon; String get mapId; String get description; QuestNpcDialoguesDto get dialogues;
/// Create a copy of QuestNpcDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestNpcDtoCopyWith<QuestNpcDto> get copyWith => _$QuestNpcDtoCopyWithImpl<QuestNpcDto>(this as QuestNpcDto, _$identity);

  /// Serializes this QuestNpcDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestNpcDto&&(identical(other.id, id) || other.id == id)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.mapId, mapId) || other.mapId == mapId)&&(identical(other.description, description) || other.description == description)&&(identical(other.dialogues, dialogues) || other.dialogues == dialogues));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameKo,icon,mapId,description,dialogues);

@override
String toString() {
  return 'QuestNpcDto(id: $id, nameKo: $nameKo, icon: $icon, mapId: $mapId, description: $description, dialogues: $dialogues)';
}


}

/// @nodoc
abstract mixin class $QuestNpcDtoCopyWith<$Res>  {
  factory $QuestNpcDtoCopyWith(QuestNpcDto value, $Res Function(QuestNpcDto) _then) = _$QuestNpcDtoCopyWithImpl;
@useResult
$Res call({
 String id, String nameKo, String icon, String mapId, String description, QuestNpcDialoguesDto dialogues
});


$QuestNpcDialoguesDtoCopyWith<$Res> get dialogues;

}
/// @nodoc
class _$QuestNpcDtoCopyWithImpl<$Res>
    implements $QuestNpcDtoCopyWith<$Res> {
  _$QuestNpcDtoCopyWithImpl(this._self, this._then);

  final QuestNpcDto _self;
  final $Res Function(QuestNpcDto) _then;

/// Create a copy of QuestNpcDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nameKo = null,Object? icon = null,Object? mapId = null,Object? description = null,Object? dialogues = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,mapId: null == mapId ? _self.mapId : mapId // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,dialogues: null == dialogues ? _self.dialogues : dialogues // ignore: cast_nullable_to_non_nullable
as QuestNpcDialoguesDto,
  ));
}
/// Create a copy of QuestNpcDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuestNpcDialoguesDtoCopyWith<$Res> get dialogues {
  
  return $QuestNpcDialoguesDtoCopyWith<$Res>(_self.dialogues, (value) {
    return _then(_self.copyWith(dialogues: value));
  });
}
}


/// Adds pattern-matching-related methods to [QuestNpcDto].
extension QuestNpcDtoPatterns on QuestNpcDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestNpcDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestNpcDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestNpcDto value)  $default,){
final _that = this;
switch (_that) {
case _QuestNpcDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestNpcDto value)?  $default,){
final _that = this;
switch (_that) {
case _QuestNpcDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String nameKo,  String icon,  String mapId,  String description,  QuestNpcDialoguesDto dialogues)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestNpcDto() when $default != null:
return $default(_that.id,_that.nameKo,_that.icon,_that.mapId,_that.description,_that.dialogues);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String nameKo,  String icon,  String mapId,  String description,  QuestNpcDialoguesDto dialogues)  $default,) {final _that = this;
switch (_that) {
case _QuestNpcDto():
return $default(_that.id,_that.nameKo,_that.icon,_that.mapId,_that.description,_that.dialogues);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String nameKo,  String icon,  String mapId,  String description,  QuestNpcDialoguesDto dialogues)?  $default,) {final _that = this;
switch (_that) {
case _QuestNpcDto() when $default != null:
return $default(_that.id,_that.nameKo,_that.icon,_that.mapId,_that.description,_that.dialogues);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuestNpcDto extends QuestNpcDto {
  const _QuestNpcDto({required this.id, this.nameKo = 'NPC', this.icon = '📜', this.mapId = '', this.description = '', this.dialogues = const QuestNpcDialoguesDto()}): super._();
  factory _QuestNpcDto.fromJson(Map<String, dynamic> json) => _$QuestNpcDtoFromJson(json);

@override final  String id;
@override@JsonKey() final  String nameKo;
@override@JsonKey() final  String icon;
@override@JsonKey() final  String mapId;
@override@JsonKey() final  String description;
@override@JsonKey() final  QuestNpcDialoguesDto dialogues;

/// Create a copy of QuestNpcDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestNpcDtoCopyWith<_QuestNpcDto> get copyWith => __$QuestNpcDtoCopyWithImpl<_QuestNpcDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestNpcDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestNpcDto&&(identical(other.id, id) || other.id == id)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.mapId, mapId) || other.mapId == mapId)&&(identical(other.description, description) || other.description == description)&&(identical(other.dialogues, dialogues) || other.dialogues == dialogues));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameKo,icon,mapId,description,dialogues);

@override
String toString() {
  return 'QuestNpcDto(id: $id, nameKo: $nameKo, icon: $icon, mapId: $mapId, description: $description, dialogues: $dialogues)';
}


}

/// @nodoc
abstract mixin class _$QuestNpcDtoCopyWith<$Res> implements $QuestNpcDtoCopyWith<$Res> {
  factory _$QuestNpcDtoCopyWith(_QuestNpcDto value, $Res Function(_QuestNpcDto) _then) = __$QuestNpcDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String nameKo, String icon, String mapId, String description, QuestNpcDialoguesDto dialogues
});


@override $QuestNpcDialoguesDtoCopyWith<$Res> get dialogues;

}
/// @nodoc
class __$QuestNpcDtoCopyWithImpl<$Res>
    implements _$QuestNpcDtoCopyWith<$Res> {
  __$QuestNpcDtoCopyWithImpl(this._self, this._then);

  final _QuestNpcDto _self;
  final $Res Function(_QuestNpcDto) _then;

/// Create a copy of QuestNpcDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nameKo = null,Object? icon = null,Object? mapId = null,Object? description = null,Object? dialogues = null,}) {
  return _then(_QuestNpcDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,mapId: null == mapId ? _self.mapId : mapId // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,dialogues: null == dialogues ? _self.dialogues : dialogues // ignore: cast_nullable_to_non_nullable
as QuestNpcDialoguesDto,
  ));
}

/// Create a copy of QuestNpcDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuestNpcDialoguesDtoCopyWith<$Res> get dialogues {
  
  return $QuestNpcDialoguesDtoCopyWith<$Res>(_self.dialogues, (value) {
    return _then(_self.copyWith(dialogues: value));
  });
}
}


/// @nodoc
mixin _$QuestNpcDialoguesDto {

 String get greeting; String get questAvailable; String get questComplete; String get noQuest; String get farewell;
/// Create a copy of QuestNpcDialoguesDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestNpcDialoguesDtoCopyWith<QuestNpcDialoguesDto> get copyWith => _$QuestNpcDialoguesDtoCopyWithImpl<QuestNpcDialoguesDto>(this as QuestNpcDialoguesDto, _$identity);

  /// Serializes this QuestNpcDialoguesDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestNpcDialoguesDto&&(identical(other.greeting, greeting) || other.greeting == greeting)&&(identical(other.questAvailable, questAvailable) || other.questAvailable == questAvailable)&&(identical(other.questComplete, questComplete) || other.questComplete == questComplete)&&(identical(other.noQuest, noQuest) || other.noQuest == noQuest)&&(identical(other.farewell, farewell) || other.farewell == farewell));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,greeting,questAvailable,questComplete,noQuest,farewell);

@override
String toString() {
  return 'QuestNpcDialoguesDto(greeting: $greeting, questAvailable: $questAvailable, questComplete: $questComplete, noQuest: $noQuest, farewell: $farewell)';
}


}

/// @nodoc
abstract mixin class $QuestNpcDialoguesDtoCopyWith<$Res>  {
  factory $QuestNpcDialoguesDtoCopyWith(QuestNpcDialoguesDto value, $Res Function(QuestNpcDialoguesDto) _then) = _$QuestNpcDialoguesDtoCopyWithImpl;
@useResult
$Res call({
 String greeting, String questAvailable, String questComplete, String noQuest, String farewell
});




}
/// @nodoc
class _$QuestNpcDialoguesDtoCopyWithImpl<$Res>
    implements $QuestNpcDialoguesDtoCopyWith<$Res> {
  _$QuestNpcDialoguesDtoCopyWithImpl(this._self, this._then);

  final QuestNpcDialoguesDto _self;
  final $Res Function(QuestNpcDialoguesDto) _then;

/// Create a copy of QuestNpcDialoguesDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? greeting = null,Object? questAvailable = null,Object? questComplete = null,Object? noQuest = null,Object? farewell = null,}) {
  return _then(_self.copyWith(
greeting: null == greeting ? _self.greeting : greeting // ignore: cast_nullable_to_non_nullable
as String,questAvailable: null == questAvailable ? _self.questAvailable : questAvailable // ignore: cast_nullable_to_non_nullable
as String,questComplete: null == questComplete ? _self.questComplete : questComplete // ignore: cast_nullable_to_non_nullable
as String,noQuest: null == noQuest ? _self.noQuest : noQuest // ignore: cast_nullable_to_non_nullable
as String,farewell: null == farewell ? _self.farewell : farewell // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [QuestNpcDialoguesDto].
extension QuestNpcDialoguesDtoPatterns on QuestNpcDialoguesDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestNpcDialoguesDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestNpcDialoguesDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestNpcDialoguesDto value)  $default,){
final _that = this;
switch (_that) {
case _QuestNpcDialoguesDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestNpcDialoguesDto value)?  $default,){
final _that = this;
switch (_that) {
case _QuestNpcDialoguesDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String greeting,  String questAvailable,  String questComplete,  String noQuest,  String farewell)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestNpcDialoguesDto() when $default != null:
return $default(_that.greeting,_that.questAvailable,_that.questComplete,_that.noQuest,_that.farewell);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String greeting,  String questAvailable,  String questComplete,  String noQuest,  String farewell)  $default,) {final _that = this;
switch (_that) {
case _QuestNpcDialoguesDto():
return $default(_that.greeting,_that.questAvailable,_that.questComplete,_that.noQuest,_that.farewell);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String greeting,  String questAvailable,  String questComplete,  String noQuest,  String farewell)?  $default,) {final _that = this;
switch (_that) {
case _QuestNpcDialoguesDto() when $default != null:
return $default(_that.greeting,_that.questAvailable,_that.questComplete,_that.noQuest,_that.farewell);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuestNpcDialoguesDto extends QuestNpcDialoguesDto {
  const _QuestNpcDialoguesDto({this.greeting = '어서 오게, 모험가여.', this.questAvailable = '자네에게 부탁할 일이 있네.', this.questComplete = '훌륭하네!', this.noQuest = '지금은 맡길 일이 없구먼.', this.farewell = '조심해서 다녀오게.'}): super._();
  factory _QuestNpcDialoguesDto.fromJson(Map<String, dynamic> json) => _$QuestNpcDialoguesDtoFromJson(json);

@override@JsonKey() final  String greeting;
@override@JsonKey() final  String questAvailable;
@override@JsonKey() final  String questComplete;
@override@JsonKey() final  String noQuest;
@override@JsonKey() final  String farewell;

/// Create a copy of QuestNpcDialoguesDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestNpcDialoguesDtoCopyWith<_QuestNpcDialoguesDto> get copyWith => __$QuestNpcDialoguesDtoCopyWithImpl<_QuestNpcDialoguesDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestNpcDialoguesDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestNpcDialoguesDto&&(identical(other.greeting, greeting) || other.greeting == greeting)&&(identical(other.questAvailable, questAvailable) || other.questAvailable == questAvailable)&&(identical(other.questComplete, questComplete) || other.questComplete == questComplete)&&(identical(other.noQuest, noQuest) || other.noQuest == noQuest)&&(identical(other.farewell, farewell) || other.farewell == farewell));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,greeting,questAvailable,questComplete,noQuest,farewell);

@override
String toString() {
  return 'QuestNpcDialoguesDto(greeting: $greeting, questAvailable: $questAvailable, questComplete: $questComplete, noQuest: $noQuest, farewell: $farewell)';
}


}

/// @nodoc
abstract mixin class _$QuestNpcDialoguesDtoCopyWith<$Res> implements $QuestNpcDialoguesDtoCopyWith<$Res> {
  factory _$QuestNpcDialoguesDtoCopyWith(_QuestNpcDialoguesDto value, $Res Function(_QuestNpcDialoguesDto) _then) = __$QuestNpcDialoguesDtoCopyWithImpl;
@override @useResult
$Res call({
 String greeting, String questAvailable, String questComplete, String noQuest, String farewell
});




}
/// @nodoc
class __$QuestNpcDialoguesDtoCopyWithImpl<$Res>
    implements _$QuestNpcDialoguesDtoCopyWith<$Res> {
  __$QuestNpcDialoguesDtoCopyWithImpl(this._self, this._then);

  final _QuestNpcDialoguesDto _self;
  final $Res Function(_QuestNpcDialoguesDto) _then;

/// Create a copy of QuestNpcDialoguesDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? greeting = null,Object? questAvailable = null,Object? questComplete = null,Object? noQuest = null,Object? farewell = null,}) {
  return _then(_QuestNpcDialoguesDto(
greeting: null == greeting ? _self.greeting : greeting // ignore: cast_nullable_to_non_nullable
as String,questAvailable: null == questAvailable ? _self.questAvailable : questAvailable // ignore: cast_nullable_to_non_nullable
as String,questComplete: null == questComplete ? _self.questComplete : questComplete // ignore: cast_nullable_to_non_nullable
as String,noQuest: null == noQuest ? _self.noQuest : noQuest // ignore: cast_nullable_to_non_nullable
as String,farewell: null == farewell ? _self.farewell : farewell // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
