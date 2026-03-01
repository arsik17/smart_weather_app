import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_model.freezed.dart';
part 'forecast_model.g.dart';

@freezed
abstract class ForecastModel with _$ForecastModel {
  const factory ForecastModel({
    @JsonKey(name: 'dt_txt') required String date,
    @JsonKey(readValue: _readTemp) required double temperature,
    @JsonKey(readValue: _readIcon) required String icon,
  }) = _ForecastModel;

  factory ForecastModel.fromJson(Map<String, dynamic> json) =>
      _$ForecastModelFromJson(json);
}

double _readTemp(Map json, String key) =>
    (json['main']['temp'] as num).toDouble();
String _readIcon(Map json, String key) => json['weather'][0]['icon'];
