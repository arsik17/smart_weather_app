// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForecastModel _$ForecastModelFromJson(Map<String, dynamic> json) =>
    _ForecastModel(
      date: json['dt_txt'] as String,
      temperature: (_readTemp(json, 'temperature') as num).toDouble(),
      icon: _readIcon(json, 'icon') as String,
    );

Map<String, dynamic> _$ForecastModelToJson(_ForecastModel instance) =>
    <String, dynamic>{
      'dt_txt': instance.date,
      'temperature': instance.temperature,
      'icon': instance.icon,
    };
