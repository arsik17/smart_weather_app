// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherModel {

@JsonKey(name: 'name') String get cityName;@JsonKey(readValue: _readTemp) double get temperature;@JsonKey(readValue: _readIcon) String get icon;@JsonKey(readValue: _readDesc) String get description;@JsonKey(readValue: _readHumidity) int get humidity;@JsonKey(readValue: _readWind) double get windSpeed;
/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherModelCopyWith<WeatherModel> get copyWith => _$WeatherModelCopyWithImpl<WeatherModel>(this as WeatherModel, _$identity);

  /// Serializes this WeatherModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherModel&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.description, description) || other.description == description)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cityName,temperature,icon,description,humidity,windSpeed);

@override
String toString() {
  return 'WeatherModel(cityName: $cityName, temperature: $temperature, icon: $icon, description: $description, humidity: $humidity, windSpeed: $windSpeed)';
}


}

/// @nodoc
abstract mixin class $WeatherModelCopyWith<$Res>  {
  factory $WeatherModelCopyWith(WeatherModel value, $Res Function(WeatherModel) _then) = _$WeatherModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String cityName,@JsonKey(readValue: _readTemp) double temperature,@JsonKey(readValue: _readIcon) String icon,@JsonKey(readValue: _readDesc) String description,@JsonKey(readValue: _readHumidity) int humidity,@JsonKey(readValue: _readWind) double windSpeed
});




}
/// @nodoc
class _$WeatherModelCopyWithImpl<$Res>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._self, this._then);

  final WeatherModel _self;
  final $Res Function(WeatherModel) _then;

/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cityName = null,Object? temperature = null,Object? icon = null,Object? description = null,Object? humidity = null,Object? windSpeed = null,}) {
  return _then(_self.copyWith(
cityName: null == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,windSpeed: null == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [WeatherModel].
extension WeatherModelPatterns on WeatherModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeatherModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeatherModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeatherModel value)  $default,){
final _that = this;
switch (_that) {
case _WeatherModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeatherModel value)?  $default,){
final _that = this;
switch (_that) {
case _WeatherModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String cityName, @JsonKey(readValue: _readTemp)  double temperature, @JsonKey(readValue: _readIcon)  String icon, @JsonKey(readValue: _readDesc)  String description, @JsonKey(readValue: _readHumidity)  int humidity, @JsonKey(readValue: _readWind)  double windSpeed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherModel() when $default != null:
return $default(_that.cityName,_that.temperature,_that.icon,_that.description,_that.humidity,_that.windSpeed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'name')  String cityName, @JsonKey(readValue: _readTemp)  double temperature, @JsonKey(readValue: _readIcon)  String icon, @JsonKey(readValue: _readDesc)  String description, @JsonKey(readValue: _readHumidity)  int humidity, @JsonKey(readValue: _readWind)  double windSpeed)  $default,) {final _that = this;
switch (_that) {
case _WeatherModel():
return $default(_that.cityName,_that.temperature,_that.icon,_that.description,_that.humidity,_that.windSpeed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'name')  String cityName, @JsonKey(readValue: _readTemp)  double temperature, @JsonKey(readValue: _readIcon)  String icon, @JsonKey(readValue: _readDesc)  String description, @JsonKey(readValue: _readHumidity)  int humidity, @JsonKey(readValue: _readWind)  double windSpeed)?  $default,) {final _that = this;
switch (_that) {
case _WeatherModel() when $default != null:
return $default(_that.cityName,_that.temperature,_that.icon,_that.description,_that.humidity,_that.windSpeed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeatherModel implements WeatherModel {
  const _WeatherModel({@JsonKey(name: 'name') required this.cityName, @JsonKey(readValue: _readTemp) required this.temperature, @JsonKey(readValue: _readIcon) required this.icon, @JsonKey(readValue: _readDesc) required this.description, @JsonKey(readValue: _readHumidity) required this.humidity, @JsonKey(readValue: _readWind) required this.windSpeed});
  factory _WeatherModel.fromJson(Map<String, dynamic> json) => _$WeatherModelFromJson(json);

@override@JsonKey(name: 'name') final  String cityName;
@override@JsonKey(readValue: _readTemp) final  double temperature;
@override@JsonKey(readValue: _readIcon) final  String icon;
@override@JsonKey(readValue: _readDesc) final  String description;
@override@JsonKey(readValue: _readHumidity) final  int humidity;
@override@JsonKey(readValue: _readWind) final  double windSpeed;

/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherModelCopyWith<_WeatherModel> get copyWith => __$WeatherModelCopyWithImpl<_WeatherModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherModel&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.description, description) || other.description == description)&&(identical(other.humidity, humidity) || other.humidity == humidity)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cityName,temperature,icon,description,humidity,windSpeed);

@override
String toString() {
  return 'WeatherModel(cityName: $cityName, temperature: $temperature, icon: $icon, description: $description, humidity: $humidity, windSpeed: $windSpeed)';
}


}

/// @nodoc
abstract mixin class _$WeatherModelCopyWith<$Res> implements $WeatherModelCopyWith<$Res> {
  factory _$WeatherModelCopyWith(_WeatherModel value, $Res Function(_WeatherModel) _then) = __$WeatherModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String cityName,@JsonKey(readValue: _readTemp) double temperature,@JsonKey(readValue: _readIcon) String icon,@JsonKey(readValue: _readDesc) String description,@JsonKey(readValue: _readHumidity) int humidity,@JsonKey(readValue: _readWind) double windSpeed
});




}
/// @nodoc
class __$WeatherModelCopyWithImpl<$Res>
    implements _$WeatherModelCopyWith<$Res> {
  __$WeatherModelCopyWithImpl(this._self, this._then);

  final _WeatherModel _self;
  final $Res Function(_WeatherModel) _then;

/// Create a copy of WeatherModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cityName = null,Object? temperature = null,Object? icon = null,Object? description = null,Object? humidity = null,Object? windSpeed = null,}) {
  return _then(_WeatherModel(
cityName: null == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,windSpeed: null == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
