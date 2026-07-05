// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trainer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TrainerListDto {

 List<TrainerDto> get trainers;
/// Create a copy of TrainerListDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrainerListDtoCopyWith<TrainerListDto> get copyWith => _$TrainerListDtoCopyWithImpl<TrainerListDto>(this as TrainerListDto, _$identity);

  /// Serializes this TrainerListDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainerListDto&&const DeepCollectionEquality().equals(other.trainers, trainers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(trainers));

@override
String toString() {
  return 'TrainerListDto(trainers: $trainers)';
}


}

/// @nodoc
abstract mixin class $TrainerListDtoCopyWith<$Res>  {
  factory $TrainerListDtoCopyWith(TrainerListDto value, $Res Function(TrainerListDto) _then) = _$TrainerListDtoCopyWithImpl;
@useResult
$Res call({
 List<TrainerDto> trainers
});




}
/// @nodoc
class _$TrainerListDtoCopyWithImpl<$Res>
    implements $TrainerListDtoCopyWith<$Res> {
  _$TrainerListDtoCopyWithImpl(this._self, this._then);

  final TrainerListDto _self;
  final $Res Function(TrainerListDto) _then;

/// Create a copy of TrainerListDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? trainers = null,}) {
  return _then(_self.copyWith(
trainers: null == trainers ? _self.trainers : trainers // ignore: cast_nullable_to_non_nullable
as List<TrainerDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [TrainerListDto].
extension TrainerListDtoPatterns on TrainerListDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrainerListDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrainerListDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrainerListDto value)  $default,){
final _that = this;
switch (_that) {
case _TrainerListDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrainerListDto value)?  $default,){
final _that = this;
switch (_that) {
case _TrainerListDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TrainerDto> trainers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrainerListDto() when $default != null:
return $default(_that.trainers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TrainerDto> trainers)  $default,) {final _that = this;
switch (_that) {
case _TrainerListDto():
return $default(_that.trainers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TrainerDto> trainers)?  $default,) {final _that = this;
switch (_that) {
case _TrainerListDto() when $default != null:
return $default(_that.trainers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TrainerListDto implements TrainerListDto {
  const _TrainerListDto({final  List<TrainerDto> trainers = const <TrainerDto>[]}): _trainers = trainers;
  factory _TrainerListDto.fromJson(Map<String, dynamic> json) => _$TrainerListDtoFromJson(json);

 final  List<TrainerDto> _trainers;
@override@JsonKey() List<TrainerDto> get trainers {
  if (_trainers is EqualUnmodifiableListView) return _trainers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trainers);
}


/// Create a copy of TrainerListDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrainerListDtoCopyWith<_TrainerListDto> get copyWith => __$TrainerListDtoCopyWithImpl<_TrainerListDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrainerListDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrainerListDto&&const DeepCollectionEquality().equals(other._trainers, _trainers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_trainers));

@override
String toString() {
  return 'TrainerListDto(trainers: $trainers)';
}


}

/// @nodoc
abstract mixin class _$TrainerListDtoCopyWith<$Res> implements $TrainerListDtoCopyWith<$Res> {
  factory _$TrainerListDtoCopyWith(_TrainerListDto value, $Res Function(_TrainerListDto) _then) = __$TrainerListDtoCopyWithImpl;
@override @useResult
$Res call({
 List<TrainerDto> trainers
});




}
/// @nodoc
class __$TrainerListDtoCopyWithImpl<$Res>
    implements _$TrainerListDtoCopyWith<$Res> {
  __$TrainerListDtoCopyWithImpl(this._self, this._then);

  final _TrainerListDto _self;
  final $Res Function(_TrainerListDto) _then;

/// Create a copy of TrainerListDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? trainers = null,}) {
  return _then(_TrainerListDto(
trainers: null == trainers ? _self._trainers : trainers // ignore: cast_nullable_to_non_nullable
as List<TrainerDto>,
  ));
}


}


/// @nodoc
mixin _$TrainerDto {

 String get id; String get nameKo; String get icon; String get mapId; String get description; TrainerDialoguesDto get dialogues;
/// Create a copy of TrainerDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrainerDtoCopyWith<TrainerDto> get copyWith => _$TrainerDtoCopyWithImpl<TrainerDto>(this as TrainerDto, _$identity);

  /// Serializes this TrainerDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainerDto&&(identical(other.id, id) || other.id == id)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.mapId, mapId) || other.mapId == mapId)&&(identical(other.description, description) || other.description == description)&&(identical(other.dialogues, dialogues) || other.dialogues == dialogues));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameKo,icon,mapId,description,dialogues);

@override
String toString() {
  return 'TrainerDto(id: $id, nameKo: $nameKo, icon: $icon, mapId: $mapId, description: $description, dialogues: $dialogues)';
}


}

/// @nodoc
abstract mixin class $TrainerDtoCopyWith<$Res>  {
  factory $TrainerDtoCopyWith(TrainerDto value, $Res Function(TrainerDto) _then) = _$TrainerDtoCopyWithImpl;
@useResult
$Res call({
 String id, String nameKo, String icon, String mapId, String description, TrainerDialoguesDto dialogues
});


$TrainerDialoguesDtoCopyWith<$Res> get dialogues;

}
/// @nodoc
class _$TrainerDtoCopyWithImpl<$Res>
    implements $TrainerDtoCopyWith<$Res> {
  _$TrainerDtoCopyWithImpl(this._self, this._then);

  final TrainerDto _self;
  final $Res Function(TrainerDto) _then;

/// Create a copy of TrainerDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nameKo = null,Object? icon = null,Object? mapId = null,Object? description = null,Object? dialogues = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,mapId: null == mapId ? _self.mapId : mapId // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,dialogues: null == dialogues ? _self.dialogues : dialogues // ignore: cast_nullable_to_non_nullable
as TrainerDialoguesDto,
  ));
}
/// Create a copy of TrainerDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrainerDialoguesDtoCopyWith<$Res> get dialogues {
  
  return $TrainerDialoguesDtoCopyWith<$Res>(_self.dialogues, (value) {
    return _then(_self.copyWith(dialogues: value));
  });
}
}


/// Adds pattern-matching-related methods to [TrainerDto].
extension TrainerDtoPatterns on TrainerDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrainerDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrainerDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrainerDto value)  $default,){
final _that = this;
switch (_that) {
case _TrainerDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrainerDto value)?  $default,){
final _that = this;
switch (_that) {
case _TrainerDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String nameKo,  String icon,  String mapId,  String description,  TrainerDialoguesDto dialogues)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrainerDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String nameKo,  String icon,  String mapId,  String description,  TrainerDialoguesDto dialogues)  $default,) {final _that = this;
switch (_that) {
case _TrainerDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String nameKo,  String icon,  String mapId,  String description,  TrainerDialoguesDto dialogues)?  $default,) {final _that = this;
switch (_that) {
case _TrainerDto() when $default != null:
return $default(_that.id,_that.nameKo,_that.icon,_that.mapId,_that.description,_that.dialogues);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TrainerDto extends TrainerDto {
  const _TrainerDto({required this.id, this.nameKo = '훈련사', this.icon = '⚔️', this.mapId = '', this.description = '', this.dialogues = const TrainerDialoguesDto()}): super._();
  factory _TrainerDto.fromJson(Map<String, dynamic> json) => _$TrainerDtoFromJson(json);

@override final  String id;
@override@JsonKey() final  String nameKo;
@override@JsonKey() final  String icon;
@override@JsonKey() final  String mapId;
@override@JsonKey() final  String description;
@override@JsonKey() final  TrainerDialoguesDto dialogues;

/// Create a copy of TrainerDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrainerDtoCopyWith<_TrainerDto> get copyWith => __$TrainerDtoCopyWithImpl<_TrainerDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrainerDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrainerDto&&(identical(other.id, id) || other.id == id)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.mapId, mapId) || other.mapId == mapId)&&(identical(other.description, description) || other.description == description)&&(identical(other.dialogues, dialogues) || other.dialogues == dialogues));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameKo,icon,mapId,description,dialogues);

@override
String toString() {
  return 'TrainerDto(id: $id, nameKo: $nameKo, icon: $icon, mapId: $mapId, description: $description, dialogues: $dialogues)';
}


}

/// @nodoc
abstract mixin class _$TrainerDtoCopyWith<$Res> implements $TrainerDtoCopyWith<$Res> {
  factory _$TrainerDtoCopyWith(_TrainerDto value, $Res Function(_TrainerDto) _then) = __$TrainerDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String nameKo, String icon, String mapId, String description, TrainerDialoguesDto dialogues
});


@override $TrainerDialoguesDtoCopyWith<$Res> get dialogues;

}
/// @nodoc
class __$TrainerDtoCopyWithImpl<$Res>
    implements _$TrainerDtoCopyWith<$Res> {
  __$TrainerDtoCopyWithImpl(this._self, this._then);

  final _TrainerDto _self;
  final $Res Function(_TrainerDto) _then;

/// Create a copy of TrainerDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nameKo = null,Object? icon = null,Object? mapId = null,Object? description = null,Object? dialogues = null,}) {
  return _then(_TrainerDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,mapId: null == mapId ? _self.mapId : mapId // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,dialogues: null == dialogues ? _self.dialogues : dialogues // ignore: cast_nullable_to_non_nullable
as TrainerDialoguesDto,
  ));
}

/// Create a copy of TrainerDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrainerDialoguesDtoCopyWith<$Res> get dialogues {
  
  return $TrainerDialoguesDtoCopyWith<$Res>(_self.dialogues, (value) {
    return _then(_self.copyWith(dialogues: value));
  });
}
}


/// @nodoc
mixin _$TrainerDialoguesDto {

 String get greeting; String get train; String get success; String get notEnoughGold; String get farewell;
/// Create a copy of TrainerDialoguesDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TrainerDialoguesDtoCopyWith<TrainerDialoguesDto> get copyWith => _$TrainerDialoguesDtoCopyWithImpl<TrainerDialoguesDto>(this as TrainerDialoguesDto, _$identity);

  /// Serializes this TrainerDialoguesDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TrainerDialoguesDto&&(identical(other.greeting, greeting) || other.greeting == greeting)&&(identical(other.train, train) || other.train == train)&&(identical(other.success, success) || other.success == success)&&(identical(other.notEnoughGold, notEnoughGold) || other.notEnoughGold == notEnoughGold)&&(identical(other.farewell, farewell) || other.farewell == farewell));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,greeting,train,success,notEnoughGold,farewell);

@override
String toString() {
  return 'TrainerDialoguesDto(greeting: $greeting, train: $train, success: $success, notEnoughGold: $notEnoughGold, farewell: $farewell)';
}


}

/// @nodoc
abstract mixin class $TrainerDialoguesDtoCopyWith<$Res>  {
  factory $TrainerDialoguesDtoCopyWith(TrainerDialoguesDto value, $Res Function(TrainerDialoguesDto) _then) = _$TrainerDialoguesDtoCopyWithImpl;
@useResult
$Res call({
 String greeting, String train, String success, String notEnoughGold, String farewell
});




}
/// @nodoc
class _$TrainerDialoguesDtoCopyWithImpl<$Res>
    implements $TrainerDialoguesDtoCopyWith<$Res> {
  _$TrainerDialoguesDtoCopyWithImpl(this._self, this._then);

  final TrainerDialoguesDto _self;
  final $Res Function(TrainerDialoguesDto) _then;

/// Create a copy of TrainerDialoguesDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? greeting = null,Object? train = null,Object? success = null,Object? notEnoughGold = null,Object? farewell = null,}) {
  return _then(_self.copyWith(
greeting: null == greeting ? _self.greeting : greeting // ignore: cast_nullable_to_non_nullable
as String,train: null == train ? _self.train : train // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String,notEnoughGold: null == notEnoughGold ? _self.notEnoughGold : notEnoughGold // ignore: cast_nullable_to_non_nullable
as String,farewell: null == farewell ? _self.farewell : farewell // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TrainerDialoguesDto].
extension TrainerDialoguesDtoPatterns on TrainerDialoguesDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TrainerDialoguesDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TrainerDialoguesDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TrainerDialoguesDto value)  $default,){
final _that = this;
switch (_that) {
case _TrainerDialoguesDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TrainerDialoguesDto value)?  $default,){
final _that = this;
switch (_that) {
case _TrainerDialoguesDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String greeting,  String train,  String success,  String notEnoughGold,  String farewell)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TrainerDialoguesDto() when $default != null:
return $default(_that.greeting,_that.train,_that.success,_that.notEnoughGold,_that.farewell);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String greeting,  String train,  String success,  String notEnoughGold,  String farewell)  $default,) {final _that = this;
switch (_that) {
case _TrainerDialoguesDto():
return $default(_that.greeting,_that.train,_that.success,_that.notEnoughGold,_that.farewell);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String greeting,  String train,  String success,  String notEnoughGold,  String farewell)?  $default,) {final _that = this;
switch (_that) {
case _TrainerDialoguesDto() when $default != null:
return $default(_that.greeting,_that.train,_that.success,_that.notEnoughGold,_that.farewell);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TrainerDialoguesDto implements TrainerDialoguesDto {
  const _TrainerDialoguesDto({this.greeting = '훈련하러 왔나?', this.train = '집중해!', this.success = '잘했어.', this.notEnoughGold = '훈련에도 비용이 든다네.', this.farewell = '꾸준히 훈련하게.'});
  factory _TrainerDialoguesDto.fromJson(Map<String, dynamic> json) => _$TrainerDialoguesDtoFromJson(json);

@override@JsonKey() final  String greeting;
@override@JsonKey() final  String train;
@override@JsonKey() final  String success;
@override@JsonKey() final  String notEnoughGold;
@override@JsonKey() final  String farewell;

/// Create a copy of TrainerDialoguesDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TrainerDialoguesDtoCopyWith<_TrainerDialoguesDto> get copyWith => __$TrainerDialoguesDtoCopyWithImpl<_TrainerDialoguesDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TrainerDialoguesDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TrainerDialoguesDto&&(identical(other.greeting, greeting) || other.greeting == greeting)&&(identical(other.train, train) || other.train == train)&&(identical(other.success, success) || other.success == success)&&(identical(other.notEnoughGold, notEnoughGold) || other.notEnoughGold == notEnoughGold)&&(identical(other.farewell, farewell) || other.farewell == farewell));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,greeting,train,success,notEnoughGold,farewell);

@override
String toString() {
  return 'TrainerDialoguesDto(greeting: $greeting, train: $train, success: $success, notEnoughGold: $notEnoughGold, farewell: $farewell)';
}


}

/// @nodoc
abstract mixin class _$TrainerDialoguesDtoCopyWith<$Res> implements $TrainerDialoguesDtoCopyWith<$Res> {
  factory _$TrainerDialoguesDtoCopyWith(_TrainerDialoguesDto value, $Res Function(_TrainerDialoguesDto) _then) = __$TrainerDialoguesDtoCopyWithImpl;
@override @useResult
$Res call({
 String greeting, String train, String success, String notEnoughGold, String farewell
});




}
/// @nodoc
class __$TrainerDialoguesDtoCopyWithImpl<$Res>
    implements _$TrainerDialoguesDtoCopyWith<$Res> {
  __$TrainerDialoguesDtoCopyWithImpl(this._self, this._then);

  final _TrainerDialoguesDto _self;
  final $Res Function(_TrainerDialoguesDto) _then;

/// Create a copy of TrainerDialoguesDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? greeting = null,Object? train = null,Object? success = null,Object? notEnoughGold = null,Object? farewell = null,}) {
  return _then(_TrainerDialoguesDto(
greeting: null == greeting ? _self.greeting : greeting // ignore: cast_nullable_to_non_nullable
as String,train: null == train ? _self.train : train // ignore: cast_nullable_to_non_nullable
as String,success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as String,notEnoughGold: null == notEnoughGold ? _self.notEnoughGold : notEnoughGold // ignore: cast_nullable_to_non_nullable
as String,farewell: null == farewell ? _self.farewell : farewell // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
