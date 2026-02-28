import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
abstract class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    @JsonKey(name: 'name') required String cityName,
    @JsonKey(readValue: _readTemp) required double temperature,
    @JsonKey(readValue: _readIcon) required String icon,
    @JsonKey(readValue: _readDesc) required String description,
    @JsonKey(readValue: _readHumidity) required int humidity,
    @JsonKey(readValue: _readWind) required double windSpeed,
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
}

double _readTemp(Map json, String key) =>
    (json['main']['temp'] as num).toDouble();
String _readDesc(Map json, String key) => json['weather'][0]['description'];
String _readIcon(Map json, String key) => json['weather'][0]['icon'];
int _readHumidity(Map json, String key) => json['main']['humidity'] as int;
double _readWind(Map json, String key) =>
    (json['wind']['speed'] as num).toDouble();


// class WeatherModel {
//   final String cityName;
//   final double temperature;
//   final String icon;
//   final String description;
//   final int humidity;
//   final double windSpeed;

//   WeatherModel({
//     required this.cityName,
//     required this.temperature,
//     required this.icon,
//     required this.description,
//     required this.humidity,
//     required this.windSpeed,
//   });

//   factory WeatherModel.fromJson(Map<String, dynamic> json) {
//     return WeatherModel(
//       cityName: json['name'],
//       temperature: (json['main']['temp'] as num).toDouble(),
//       icon: json['weather'][0]['icon'],
//       description: json['weather'][0]['description'],
//       humidity: json['main']['humidity'],
//       windSpeed: (json['wind']['speed'] as num).toDouble(),
//     );
//   }

//   @override
//   String toString() {
//     return '''WeatherModel(cityName: $cityName, 
//     temperature: $temperature, icon: $icon,
//      description: $description,
//       humidity: $humidity,
//       windSpeed: $windSpeed)''';
//   }

//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;

//     return other is WeatherModel &&
//         other.cityName == cityName &&
//         other.temperature == temperature &&
//         other.icon == icon &&
//         other.description == description &&
//         other.humidity == humidity &&
//         other.windSpeed == windSpeed;
//   }

//   @override
//   int get hashCode => Object.hash(
//     cityName,
//     temperature,
//     icon,
//     description,
//     humidity,
//     windSpeed,
//   );

//   WeatherModel copyWith({
//     String? cityName,
//     double? temperature,
//     String? icon,
//     String? description,
//     int? humidity,
//     double? windSpeed
//   }){
//     return WeatherModel(cityName: cityName ?? this.cityName,
//      temperature: temperature ?? this.temperature,
//       icon: icon ?? this.icon, 
//       description: description ?? this.description, 
//       humidity: humidity ?? this.humidity,
//        windSpeed: windSpeed ?? this.windSpeed);
//   }
// }