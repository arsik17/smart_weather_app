// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) =>
    _WeatherModel(
      cityName: json['name'] as String,
      temperature: (_readTemp(json, 'temperature') as num).toDouble(),
      icon: _readIcon(json, 'icon') as String,
      description: _readDesc(json, 'description') as String,
      humidity: (_readHumidity(json, 'humidity') as num).toInt(),
      windSpeed: (_readWind(json, 'windSpeed') as num).toDouble(),
    );

Map<String, dynamic> _$WeatherModelToJson(_WeatherModel instance) =>
    <String, dynamic>{
      'name': instance.cityName,
      'temperature': instance.temperature,
      'icon': instance.icon,
      'description': instance.description,
      'humidity': instance.humidity,
      'windSpeed': instance.windSpeed,
    };
