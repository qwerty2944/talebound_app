// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'healer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HealerCatalogDto {

 List<HealerDto> get npcs;
/// Create a copy of HealerCatalogDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealerCatalogDtoCopyWith<HealerCatalogDto> get copyWith => _$HealerCatalogDtoCopyWithImpl<HealerCatalogDto>(this as HealerCatalogDto, _$identity);

  /// Serializes this HealerCatalogDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealerCatalogDto&&const DeepCollectionEquality().equals(other.npcs, npcs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(npcs));

@override
String toString() {
  return 'HealerCatalogDto(npcs: $npcs)';
}


}

/// @nodoc
abstract mixin class $HealerCatalogDtoCopyWith<$Res>  {
  factory $HealerCatalogDtoCopyWith(HealerCatalogDto value, $Res Function(HealerCatalogDto) _then) = _$HealerCatalogDtoCopyWithImpl;
@useResult
$Res call({
 List<HealerDto> npcs
});




}
/// @nodoc
class _$HealerCatalogDtoCopyWithImpl<$Res>
    implements $HealerCatalogDtoCopyWith<$Res> {
  _$HealerCatalogDtoCopyWithImpl(this._self, this._then);

  final HealerCatalogDto _self;
  final $Res Function(HealerCatalogDto) _then;

/// Create a copy of HealerCatalogDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? npcs = null,}) {
  return _then(_self.copyWith(
npcs: null == npcs ? _self.npcs : npcs // ignore: cast_nullable_to_non_nullable
as List<HealerDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [HealerCatalogDto].
extension HealerCatalogDtoPatterns on HealerCatalogDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealerCatalogDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealerCatalogDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealerCatalogDto value)  $default,){
final _that = this;
switch (_that) {
case _HealerCatalogDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealerCatalogDto value)?  $default,){
final _that = this;
switch (_that) {
case _HealerCatalogDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<HealerDto> npcs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealerCatalogDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<HealerDto> npcs)  $default,) {final _that = this;
switch (_that) {
case _HealerCatalogDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<HealerDto> npcs)?  $default,) {final _that = this;
switch (_that) {
case _HealerCatalogDto() when $default != null:
return $default(_that.npcs);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealerCatalogDto implements HealerCatalogDto {
  const _HealerCatalogDto({final  List<HealerDto> npcs = const <HealerDto>[]}): _npcs = npcs;
  factory _HealerCatalogDto.fromJson(Map<String, dynamic> json) => _$HealerCatalogDtoFromJson(json);

 final  List<HealerDto> _npcs;
@override@JsonKey() List<HealerDto> get npcs {
  if (_npcs is EqualUnmodifiableListView) return _npcs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_npcs);
}


/// Create a copy of HealerCatalogDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealerCatalogDtoCopyWith<_HealerCatalogDto> get copyWith => __$HealerCatalogDtoCopyWithImpl<_HealerCatalogDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealerCatalogDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealerCatalogDto&&const DeepCollectionEquality().equals(other._npcs, _npcs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_npcs));

@override
String toString() {
  return 'HealerCatalogDto(npcs: $npcs)';
}


}

/// @nodoc
abstract mixin class _$HealerCatalogDtoCopyWith<$Res> implements $HealerCatalogDtoCopyWith<$Res> {
  factory _$HealerCatalogDtoCopyWith(_HealerCatalogDto value, $Res Function(_HealerCatalogDto) _then) = __$HealerCatalogDtoCopyWithImpl;
@override @useResult
$Res call({
 List<HealerDto> npcs
});




}
/// @nodoc
class __$HealerCatalogDtoCopyWithImpl<$Res>
    implements _$HealerCatalogDtoCopyWith<$Res> {
  __$HealerCatalogDtoCopyWithImpl(this._self, this._then);

  final _HealerCatalogDto _self;
  final $Res Function(_HealerCatalogDto) _then;

/// Create a copy of HealerCatalogDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? npcs = null,}) {
  return _then(_HealerCatalogDto(
npcs: null == npcs ? _self._npcs : npcs // ignore: cast_nullable_to_non_nullable
as List<HealerDto>,
  ));
}


}


/// @nodoc
mixin _$HealerDto {

 String get id; String get nameKo; String get icon; String get mapId; String get description; HealerDialoguesDto get dialogues; HealerServicesDto get services;
/// Create a copy of HealerDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealerDtoCopyWith<HealerDto> get copyWith => _$HealerDtoCopyWithImpl<HealerDto>(this as HealerDto, _$identity);

  /// Serializes this HealerDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealerDto&&(identical(other.id, id) || other.id == id)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.mapId, mapId) || other.mapId == mapId)&&(identical(other.description, description) || other.description == description)&&(identical(other.dialogues, dialogues) || other.dialogues == dialogues)&&(identical(other.services, services) || other.services == services));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameKo,icon,mapId,description,dialogues,services);

@override
String toString() {
  return 'HealerDto(id: $id, nameKo: $nameKo, icon: $icon, mapId: $mapId, description: $description, dialogues: $dialogues, services: $services)';
}


}

/// @nodoc
abstract mixin class $HealerDtoCopyWith<$Res>  {
  factory $HealerDtoCopyWith(HealerDto value, $Res Function(HealerDto) _then) = _$HealerDtoCopyWithImpl;
@useResult
$Res call({
 String id, String nameKo, String icon, String mapId, String description, HealerDialoguesDto dialogues, HealerServicesDto services
});


$HealerDialoguesDtoCopyWith<$Res> get dialogues;$HealerServicesDtoCopyWith<$Res> get services;

}
/// @nodoc
class _$HealerDtoCopyWithImpl<$Res>
    implements $HealerDtoCopyWith<$Res> {
  _$HealerDtoCopyWithImpl(this._self, this._then);

  final HealerDto _self;
  final $Res Function(HealerDto) _then;

/// Create a copy of HealerDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nameKo = null,Object? icon = null,Object? mapId = null,Object? description = null,Object? dialogues = null,Object? services = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,mapId: null == mapId ? _self.mapId : mapId // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,dialogues: null == dialogues ? _self.dialogues : dialogues // ignore: cast_nullable_to_non_nullable
as HealerDialoguesDto,services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as HealerServicesDto,
  ));
}
/// Create a copy of HealerDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealerDialoguesDtoCopyWith<$Res> get dialogues {
  
  return $HealerDialoguesDtoCopyWith<$Res>(_self.dialogues, (value) {
    return _then(_self.copyWith(dialogues: value));
  });
}/// Create a copy of HealerDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealerServicesDtoCopyWith<$Res> get services {
  
  return $HealerServicesDtoCopyWith<$Res>(_self.services, (value) {
    return _then(_self.copyWith(services: value));
  });
}
}


/// Adds pattern-matching-related methods to [HealerDto].
extension HealerDtoPatterns on HealerDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealerDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealerDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealerDto value)  $default,){
final _that = this;
switch (_that) {
case _HealerDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealerDto value)?  $default,){
final _that = this;
switch (_that) {
case _HealerDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String nameKo,  String icon,  String mapId,  String description,  HealerDialoguesDto dialogues,  HealerServicesDto services)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealerDto() when $default != null:
return $default(_that.id,_that.nameKo,_that.icon,_that.mapId,_that.description,_that.dialogues,_that.services);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String nameKo,  String icon,  String mapId,  String description,  HealerDialoguesDto dialogues,  HealerServicesDto services)  $default,) {final _that = this;
switch (_that) {
case _HealerDto():
return $default(_that.id,_that.nameKo,_that.icon,_that.mapId,_that.description,_that.dialogues,_that.services);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String nameKo,  String icon,  String mapId,  String description,  HealerDialoguesDto dialogues,  HealerServicesDto services)?  $default,) {final _that = this;
switch (_that) {
case _HealerDto() when $default != null:
return $default(_that.id,_that.nameKo,_that.icon,_that.mapId,_that.description,_that.dialogues,_that.services);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealerDto extends HealerDto {
  const _HealerDto({required this.id, this.nameKo = '치료사', this.icon = '🏥', this.mapId = '', this.description = '', this.dialogues = const HealerDialoguesDto(), this.services = const HealerServicesDto()}): super._();
  factory _HealerDto.fromJson(Map<String, dynamic> json) => _$HealerDtoFromJson(json);

@override final  String id;
@override@JsonKey() final  String nameKo;
@override@JsonKey() final  String icon;
@override@JsonKey() final  String mapId;
@override@JsonKey() final  String description;
@override@JsonKey() final  HealerDialoguesDto dialogues;
@override@JsonKey() final  HealerServicesDto services;

/// Create a copy of HealerDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealerDtoCopyWith<_HealerDto> get copyWith => __$HealerDtoCopyWithImpl<_HealerDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealerDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealerDto&&(identical(other.id, id) || other.id == id)&&(identical(other.nameKo, nameKo) || other.nameKo == nameKo)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.mapId, mapId) || other.mapId == mapId)&&(identical(other.description, description) || other.description == description)&&(identical(other.dialogues, dialogues) || other.dialogues == dialogues)&&(identical(other.services, services) || other.services == services));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameKo,icon,mapId,description,dialogues,services);

@override
String toString() {
  return 'HealerDto(id: $id, nameKo: $nameKo, icon: $icon, mapId: $mapId, description: $description, dialogues: $dialogues, services: $services)';
}


}

/// @nodoc
abstract mixin class _$HealerDtoCopyWith<$Res> implements $HealerDtoCopyWith<$Res> {
  factory _$HealerDtoCopyWith(_HealerDto value, $Res Function(_HealerDto) _then) = __$HealerDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String nameKo, String icon, String mapId, String description, HealerDialoguesDto dialogues, HealerServicesDto services
});


@override $HealerDialoguesDtoCopyWith<$Res> get dialogues;@override $HealerServicesDtoCopyWith<$Res> get services;

}
/// @nodoc
class __$HealerDtoCopyWithImpl<$Res>
    implements _$HealerDtoCopyWith<$Res> {
  __$HealerDtoCopyWithImpl(this._self, this._then);

  final _HealerDto _self;
  final $Res Function(_HealerDto) _then;

/// Create a copy of HealerDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nameKo = null,Object? icon = null,Object? mapId = null,Object? description = null,Object? dialogues = null,Object? services = null,}) {
  return _then(_HealerDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,nameKo: null == nameKo ? _self.nameKo : nameKo // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,mapId: null == mapId ? _self.mapId : mapId // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,dialogues: null == dialogues ? _self.dialogues : dialogues // ignore: cast_nullable_to_non_nullable
as HealerDialoguesDto,services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as HealerServicesDto,
  ));
}

/// Create a copy of HealerDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealerDialoguesDtoCopyWith<$Res> get dialogues {
  
  return $HealerDialoguesDtoCopyWith<$Res>(_self.dialogues, (value) {
    return _then(_self.copyWith(dialogues: value));
  });
}/// Create a copy of HealerDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealerServicesDtoCopyWith<$Res> get services {
  
  return $HealerServicesDtoCopyWith<$Res>(_self.services, (value) {
    return _then(_self.copyWith(services: value));
  });
}
}


/// @nodoc
mixin _$HealerDialoguesDto {

 String get greeting; String get noInjury; String get healSuccess; String get notEnoughGold; String get farewell;
/// Create a copy of HealerDialoguesDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealerDialoguesDtoCopyWith<HealerDialoguesDto> get copyWith => _$HealerDialoguesDtoCopyWithImpl<HealerDialoguesDto>(this as HealerDialoguesDto, _$identity);

  /// Serializes this HealerDialoguesDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealerDialoguesDto&&(identical(other.greeting, greeting) || other.greeting == greeting)&&(identical(other.noInjury, noInjury) || other.noInjury == noInjury)&&(identical(other.healSuccess, healSuccess) || other.healSuccess == healSuccess)&&(identical(other.notEnoughGold, notEnoughGold) || other.notEnoughGold == notEnoughGold)&&(identical(other.farewell, farewell) || other.farewell == farewell));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,greeting,noInjury,healSuccess,notEnoughGold,farewell);

@override
String toString() {
  return 'HealerDialoguesDto(greeting: $greeting, noInjury: $noInjury, healSuccess: $healSuccess, notEnoughGold: $notEnoughGold, farewell: $farewell)';
}


}

/// @nodoc
abstract mixin class $HealerDialoguesDtoCopyWith<$Res>  {
  factory $HealerDialoguesDtoCopyWith(HealerDialoguesDto value, $Res Function(HealerDialoguesDto) _then) = _$HealerDialoguesDtoCopyWithImpl;
@useResult
$Res call({
 String greeting, String noInjury, String healSuccess, String notEnoughGold, String farewell
});




}
/// @nodoc
class _$HealerDialoguesDtoCopyWithImpl<$Res>
    implements $HealerDialoguesDtoCopyWith<$Res> {
  _$HealerDialoguesDtoCopyWithImpl(this._self, this._then);

  final HealerDialoguesDto _self;
  final $Res Function(HealerDialoguesDto) _then;

/// Create a copy of HealerDialoguesDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? greeting = null,Object? noInjury = null,Object? healSuccess = null,Object? notEnoughGold = null,Object? farewell = null,}) {
  return _then(_self.copyWith(
greeting: null == greeting ? _self.greeting : greeting // ignore: cast_nullable_to_non_nullable
as String,noInjury: null == noInjury ? _self.noInjury : noInjury // ignore: cast_nullable_to_non_nullable
as String,healSuccess: null == healSuccess ? _self.healSuccess : healSuccess // ignore: cast_nullable_to_non_nullable
as String,notEnoughGold: null == notEnoughGold ? _self.notEnoughGold : notEnoughGold // ignore: cast_nullable_to_non_nullable
as String,farewell: null == farewell ? _self.farewell : farewell // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HealerDialoguesDto].
extension HealerDialoguesDtoPatterns on HealerDialoguesDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealerDialoguesDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealerDialoguesDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealerDialoguesDto value)  $default,){
final _that = this;
switch (_that) {
case _HealerDialoguesDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealerDialoguesDto value)?  $default,){
final _that = this;
switch (_that) {
case _HealerDialoguesDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String greeting,  String noInjury,  String healSuccess,  String notEnoughGold,  String farewell)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealerDialoguesDto() when $default != null:
return $default(_that.greeting,_that.noInjury,_that.healSuccess,_that.notEnoughGold,_that.farewell);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String greeting,  String noInjury,  String healSuccess,  String notEnoughGold,  String farewell)  $default,) {final _that = this;
switch (_that) {
case _HealerDialoguesDto():
return $default(_that.greeting,_that.noInjury,_that.healSuccess,_that.notEnoughGold,_that.farewell);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String greeting,  String noInjury,  String healSuccess,  String notEnoughGold,  String farewell)?  $default,) {final _that = this;
switch (_that) {
case _HealerDialoguesDto() when $default != null:
return $default(_that.greeting,_that.noInjury,_that.healSuccess,_that.notEnoughGold,_that.farewell);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealerDialoguesDto extends HealerDialoguesDto {
  const _HealerDialoguesDto({this.greeting = '어서 오세요, 여행자님.', this.noInjury = '건강해 보이시네요!', this.healSuccess = '치료가 완료되었습니다.', this.notEnoughGold = '금화가 부족하시군요...', this.farewell = '건강하세요!'}): super._();
  factory _HealerDialoguesDto.fromJson(Map<String, dynamic> json) => _$HealerDialoguesDtoFromJson(json);

@override@JsonKey() final  String greeting;
@override@JsonKey() final  String noInjury;
@override@JsonKey() final  String healSuccess;
@override@JsonKey() final  String notEnoughGold;
@override@JsonKey() final  String farewell;

/// Create a copy of HealerDialoguesDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealerDialoguesDtoCopyWith<_HealerDialoguesDto> get copyWith => __$HealerDialoguesDtoCopyWithImpl<_HealerDialoguesDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealerDialoguesDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealerDialoguesDto&&(identical(other.greeting, greeting) || other.greeting == greeting)&&(identical(other.noInjury, noInjury) || other.noInjury == noInjury)&&(identical(other.healSuccess, healSuccess) || other.healSuccess == healSuccess)&&(identical(other.notEnoughGold, notEnoughGold) || other.notEnoughGold == notEnoughGold)&&(identical(other.farewell, farewell) || other.farewell == farewell));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,greeting,noInjury,healSuccess,notEnoughGold,farewell);

@override
String toString() {
  return 'HealerDialoguesDto(greeting: $greeting, noInjury: $noInjury, healSuccess: $healSuccess, notEnoughGold: $notEnoughGold, farewell: $farewell)';
}


}

/// @nodoc
abstract mixin class _$HealerDialoguesDtoCopyWith<$Res> implements $HealerDialoguesDtoCopyWith<$Res> {
  factory _$HealerDialoguesDtoCopyWith(_HealerDialoguesDto value, $Res Function(_HealerDialoguesDto) _then) = __$HealerDialoguesDtoCopyWithImpl;
@override @useResult
$Res call({
 String greeting, String noInjury, String healSuccess, String notEnoughGold, String farewell
});




}
/// @nodoc
class __$HealerDialoguesDtoCopyWithImpl<$Res>
    implements _$HealerDialoguesDtoCopyWith<$Res> {
  __$HealerDialoguesDtoCopyWithImpl(this._self, this._then);

  final _HealerDialoguesDto _self;
  final $Res Function(_HealerDialoguesDto) _then;

/// Create a copy of HealerDialoguesDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? greeting = null,Object? noInjury = null,Object? healSuccess = null,Object? notEnoughGold = null,Object? farewell = null,}) {
  return _then(_HealerDialoguesDto(
greeting: null == greeting ? _self.greeting : greeting // ignore: cast_nullable_to_non_nullable
as String,noInjury: null == noInjury ? _self.noInjury : noInjury // ignore: cast_nullable_to_non_nullable
as String,healSuccess: null == healSuccess ? _self.healSuccess : healSuccess // ignore: cast_nullable_to_non_nullable
as String,notEnoughGold: null == notEnoughGold ? _self.notEnoughGold : notEnoughGold // ignore: cast_nullable_to_non_nullable
as String,farewell: null == farewell ? _self.farewell : farewell // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$HealerServicesDto {

 HealingPricesDto get healing;
/// Create a copy of HealerServicesDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealerServicesDtoCopyWith<HealerServicesDto> get copyWith => _$HealerServicesDtoCopyWithImpl<HealerServicesDto>(this as HealerServicesDto, _$identity);

  /// Serializes this HealerServicesDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealerServicesDto&&(identical(other.healing, healing) || other.healing == healing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,healing);

@override
String toString() {
  return 'HealerServicesDto(healing: $healing)';
}


}

/// @nodoc
abstract mixin class $HealerServicesDtoCopyWith<$Res>  {
  factory $HealerServicesDtoCopyWith(HealerServicesDto value, $Res Function(HealerServicesDto) _then) = _$HealerServicesDtoCopyWithImpl;
@useResult
$Res call({
 HealingPricesDto healing
});


$HealingPricesDtoCopyWith<$Res> get healing;

}
/// @nodoc
class _$HealerServicesDtoCopyWithImpl<$Res>
    implements $HealerServicesDtoCopyWith<$Res> {
  _$HealerServicesDtoCopyWithImpl(this._self, this._then);

  final HealerServicesDto _self;
  final $Res Function(HealerServicesDto) _then;

/// Create a copy of HealerServicesDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? healing = null,}) {
  return _then(_self.copyWith(
healing: null == healing ? _self.healing : healing // ignore: cast_nullable_to_non_nullable
as HealingPricesDto,
  ));
}
/// Create a copy of HealerServicesDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealingPricesDtoCopyWith<$Res> get healing {
  
  return $HealingPricesDtoCopyWith<$Res>(_self.healing, (value) {
    return _then(_self.copyWith(healing: value));
  });
}
}


/// Adds pattern-matching-related methods to [HealerServicesDto].
extension HealerServicesDtoPatterns on HealerServicesDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealerServicesDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealerServicesDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealerServicesDto value)  $default,){
final _that = this;
switch (_that) {
case _HealerServicesDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealerServicesDto value)?  $default,){
final _that = this;
switch (_that) {
case _HealerServicesDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( HealingPricesDto healing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealerServicesDto() when $default != null:
return $default(_that.healing);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( HealingPricesDto healing)  $default,) {final _that = this;
switch (_that) {
case _HealerServicesDto():
return $default(_that.healing);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( HealingPricesDto healing)?  $default,) {final _that = this;
switch (_that) {
case _HealerServicesDto() when $default != null:
return $default(_that.healing);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealerServicesDto implements HealerServicesDto {
  const _HealerServicesDto({this.healing = const HealingPricesDto()});
  factory _HealerServicesDto.fromJson(Map<String, dynamic> json) => _$HealerServicesDtoFromJson(json);

@override@JsonKey() final  HealingPricesDto healing;

/// Create a copy of HealerServicesDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealerServicesDtoCopyWith<_HealerServicesDto> get copyWith => __$HealerServicesDtoCopyWithImpl<_HealerServicesDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealerServicesDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealerServicesDto&&(identical(other.healing, healing) || other.healing == healing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,healing);

@override
String toString() {
  return 'HealerServicesDto(healing: $healing)';
}


}

/// @nodoc
abstract mixin class _$HealerServicesDtoCopyWith<$Res> implements $HealerServicesDtoCopyWith<$Res> {
  factory _$HealerServicesDtoCopyWith(_HealerServicesDto value, $Res Function(_HealerServicesDto) _then) = __$HealerServicesDtoCopyWithImpl;
@override @useResult
$Res call({
 HealingPricesDto healing
});


@override $HealingPricesDtoCopyWith<$Res> get healing;

}
/// @nodoc
class __$HealerServicesDtoCopyWithImpl<$Res>
    implements _$HealerServicesDtoCopyWith<$Res> {
  __$HealerServicesDtoCopyWithImpl(this._self, this._then);

  final _HealerServicesDto _self;
  final $Res Function(_HealerServicesDto) _then;

/// Create a copy of HealerServicesDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? healing = null,}) {
  return _then(_HealerServicesDto(
healing: null == healing ? _self.healing : healing // ignore: cast_nullable_to_non_nullable
as HealingPricesDto,
  ));
}

/// Create a copy of HealerServicesDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealingPricesDtoCopyWith<$Res> get healing {
  
  return $HealingPricesDtoCopyWith<$Res>(_self.healing, (value) {
    return _then(_self.copyWith(healing: value));
  });
}
}


/// @nodoc
mixin _$HealingPricesDto {

 HealPriceDto get light; HealPriceDto get medium; HealPriceDto get critical;
/// Create a copy of HealingPricesDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealingPricesDtoCopyWith<HealingPricesDto> get copyWith => _$HealingPricesDtoCopyWithImpl<HealingPricesDto>(this as HealingPricesDto, _$identity);

  /// Serializes this HealingPricesDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealingPricesDto&&(identical(other.light, light) || other.light == light)&&(identical(other.medium, medium) || other.medium == medium)&&(identical(other.critical, critical) || other.critical == critical));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,light,medium,critical);

@override
String toString() {
  return 'HealingPricesDto(light: $light, medium: $medium, critical: $critical)';
}


}

/// @nodoc
abstract mixin class $HealingPricesDtoCopyWith<$Res>  {
  factory $HealingPricesDtoCopyWith(HealingPricesDto value, $Res Function(HealingPricesDto) _then) = _$HealingPricesDtoCopyWithImpl;
@useResult
$Res call({
 HealPriceDto light, HealPriceDto medium, HealPriceDto critical
});


$HealPriceDtoCopyWith<$Res> get light;$HealPriceDtoCopyWith<$Res> get medium;$HealPriceDtoCopyWith<$Res> get critical;

}
/// @nodoc
class _$HealingPricesDtoCopyWithImpl<$Res>
    implements $HealingPricesDtoCopyWith<$Res> {
  _$HealingPricesDtoCopyWithImpl(this._self, this._then);

  final HealingPricesDto _self;
  final $Res Function(HealingPricesDto) _then;

/// Create a copy of HealingPricesDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? light = null,Object? medium = null,Object? critical = null,}) {
  return _then(_self.copyWith(
light: null == light ? _self.light : light // ignore: cast_nullable_to_non_nullable
as HealPriceDto,medium: null == medium ? _self.medium : medium // ignore: cast_nullable_to_non_nullable
as HealPriceDto,critical: null == critical ? _self.critical : critical // ignore: cast_nullable_to_non_nullable
as HealPriceDto,
  ));
}
/// Create a copy of HealingPricesDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealPriceDtoCopyWith<$Res> get light {
  
  return $HealPriceDtoCopyWith<$Res>(_self.light, (value) {
    return _then(_self.copyWith(light: value));
  });
}/// Create a copy of HealingPricesDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealPriceDtoCopyWith<$Res> get medium {
  
  return $HealPriceDtoCopyWith<$Res>(_self.medium, (value) {
    return _then(_self.copyWith(medium: value));
  });
}/// Create a copy of HealingPricesDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealPriceDtoCopyWith<$Res> get critical {
  
  return $HealPriceDtoCopyWith<$Res>(_self.critical, (value) {
    return _then(_self.copyWith(critical: value));
  });
}
}


/// Adds pattern-matching-related methods to [HealingPricesDto].
extension HealingPricesDtoPatterns on HealingPricesDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealingPricesDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealingPricesDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealingPricesDto value)  $default,){
final _that = this;
switch (_that) {
case _HealingPricesDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealingPricesDto value)?  $default,){
final _that = this;
switch (_that) {
case _HealingPricesDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( HealPriceDto light,  HealPriceDto medium,  HealPriceDto critical)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealingPricesDto() when $default != null:
return $default(_that.light,_that.medium,_that.critical);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( HealPriceDto light,  HealPriceDto medium,  HealPriceDto critical)  $default,) {final _that = this;
switch (_that) {
case _HealingPricesDto():
return $default(_that.light,_that.medium,_that.critical);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( HealPriceDto light,  HealPriceDto medium,  HealPriceDto critical)?  $default,) {final _that = this;
switch (_that) {
case _HealingPricesDto() when $default != null:
return $default(_that.light,_that.medium,_that.critical);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealingPricesDto implements HealingPricesDto {
  const _HealingPricesDto({this.light = const HealPriceDto(), this.medium = const HealPriceDto(), this.critical = const HealPriceDto()});
  factory _HealingPricesDto.fromJson(Map<String, dynamic> json) => _$HealingPricesDtoFromJson(json);

@override@JsonKey() final  HealPriceDto light;
@override@JsonKey() final  HealPriceDto medium;
@override@JsonKey() final  HealPriceDto critical;

/// Create a copy of HealingPricesDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealingPricesDtoCopyWith<_HealingPricesDto> get copyWith => __$HealingPricesDtoCopyWithImpl<_HealingPricesDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealingPricesDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealingPricesDto&&(identical(other.light, light) || other.light == light)&&(identical(other.medium, medium) || other.medium == medium)&&(identical(other.critical, critical) || other.critical == critical));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,light,medium,critical);

@override
String toString() {
  return 'HealingPricesDto(light: $light, medium: $medium, critical: $critical)';
}


}

/// @nodoc
abstract mixin class _$HealingPricesDtoCopyWith<$Res> implements $HealingPricesDtoCopyWith<$Res> {
  factory _$HealingPricesDtoCopyWith(_HealingPricesDto value, $Res Function(_HealingPricesDto) _then) = __$HealingPricesDtoCopyWithImpl;
@override @useResult
$Res call({
 HealPriceDto light, HealPriceDto medium, HealPriceDto critical
});


@override $HealPriceDtoCopyWith<$Res> get light;@override $HealPriceDtoCopyWith<$Res> get medium;@override $HealPriceDtoCopyWith<$Res> get critical;

}
/// @nodoc
class __$HealingPricesDtoCopyWithImpl<$Res>
    implements _$HealingPricesDtoCopyWith<$Res> {
  __$HealingPricesDtoCopyWithImpl(this._self, this._then);

  final _HealingPricesDto _self;
  final $Res Function(_HealingPricesDto) _then;

/// Create a copy of HealingPricesDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? light = null,Object? medium = null,Object? critical = null,}) {
  return _then(_HealingPricesDto(
light: null == light ? _self.light : light // ignore: cast_nullable_to_non_nullable
as HealPriceDto,medium: null == medium ? _self.medium : medium // ignore: cast_nullable_to_non_nullable
as HealPriceDto,critical: null == critical ? _self.critical : critical // ignore: cast_nullable_to_non_nullable
as HealPriceDto,
  ));
}

/// Create a copy of HealingPricesDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealPriceDtoCopyWith<$Res> get light {
  
  return $HealPriceDtoCopyWith<$Res>(_self.light, (value) {
    return _then(_self.copyWith(light: value));
  });
}/// Create a copy of HealingPricesDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealPriceDtoCopyWith<$Res> get medium {
  
  return $HealPriceDtoCopyWith<$Res>(_self.medium, (value) {
    return _then(_self.copyWith(medium: value));
  });
}/// Create a copy of HealingPricesDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HealPriceDtoCopyWith<$Res> get critical {
  
  return $HealPriceDtoCopyWith<$Res>(_self.critical, (value) {
    return _then(_self.copyWith(critical: value));
  });
}
}


/// @nodoc
mixin _$HealPriceDto {

 int get gold; String get description;
/// Create a copy of HealPriceDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HealPriceDtoCopyWith<HealPriceDto> get copyWith => _$HealPriceDtoCopyWithImpl<HealPriceDto>(this as HealPriceDto, _$identity);

  /// Serializes this HealPriceDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HealPriceDto&&(identical(other.gold, gold) || other.gold == gold)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gold,description);

@override
String toString() {
  return 'HealPriceDto(gold: $gold, description: $description)';
}


}

/// @nodoc
abstract mixin class $HealPriceDtoCopyWith<$Res>  {
  factory $HealPriceDtoCopyWith(HealPriceDto value, $Res Function(HealPriceDto) _then) = _$HealPriceDtoCopyWithImpl;
@useResult
$Res call({
 int gold, String description
});




}
/// @nodoc
class _$HealPriceDtoCopyWithImpl<$Res>
    implements $HealPriceDtoCopyWith<$Res> {
  _$HealPriceDtoCopyWithImpl(this._self, this._then);

  final HealPriceDto _self;
  final $Res Function(HealPriceDto) _then;

/// Create a copy of HealPriceDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gold = null,Object? description = null,}) {
  return _then(_self.copyWith(
gold: null == gold ? _self.gold : gold // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [HealPriceDto].
extension HealPriceDtoPatterns on HealPriceDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HealPriceDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HealPriceDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HealPriceDto value)  $default,){
final _that = this;
switch (_that) {
case _HealPriceDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HealPriceDto value)?  $default,){
final _that = this;
switch (_that) {
case _HealPriceDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int gold,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HealPriceDto() when $default != null:
return $default(_that.gold,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int gold,  String description)  $default,) {final _that = this;
switch (_that) {
case _HealPriceDto():
return $default(_that.gold,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int gold,  String description)?  $default,) {final _that = this;
switch (_that) {
case _HealPriceDto() when $default != null:
return $default(_that.gold,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HealPriceDto implements HealPriceDto {
  const _HealPriceDto({this.gold = 0, this.description = ''});
  factory _HealPriceDto.fromJson(Map<String, dynamic> json) => _$HealPriceDtoFromJson(json);

@override@JsonKey() final  int gold;
@override@JsonKey() final  String description;

/// Create a copy of HealPriceDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HealPriceDtoCopyWith<_HealPriceDto> get copyWith => __$HealPriceDtoCopyWithImpl<_HealPriceDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HealPriceDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HealPriceDto&&(identical(other.gold, gold) || other.gold == gold)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gold,description);

@override
String toString() {
  return 'HealPriceDto(gold: $gold, description: $description)';
}


}

/// @nodoc
abstract mixin class _$HealPriceDtoCopyWith<$Res> implements $HealPriceDtoCopyWith<$Res> {
  factory _$HealPriceDtoCopyWith(_HealPriceDto value, $Res Function(_HealPriceDto) _then) = __$HealPriceDtoCopyWithImpl;
@override @useResult
$Res call({
 int gold, String description
});




}
/// @nodoc
class __$HealPriceDtoCopyWithImpl<$Res>
    implements _$HealPriceDtoCopyWith<$Res> {
  __$HealPriceDtoCopyWithImpl(this._self, this._then);

  final _HealPriceDto _self;
  final $Res Function(_HealPriceDto) _then;

/// Create a copy of HealPriceDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gold = null,Object? description = null,}) {
  return _then(_HealPriceDto(
gold: null == gold ? _self.gold : gold // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
