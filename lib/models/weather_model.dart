class WeatherModel {
  final String cityName;
  final double temperature;
  final String icon;
  final String description;
  final int humidity;
  final double windSpeed;

  WeatherModel({
    required this.cityName,
    required this.temperature,
    required this.icon,
    required this.description,
    required this.humidity,
    required this.windSpeed,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json['name'],
      temperature: (json['main']['temp'] as num).toDouble(),
      icon: json['weather'][0]['icon'],
      description: json['weather'][0]['description'],
      humidity: json['main']['humidity'],
      windSpeed: (json['wind']['speed'] as num).toDouble(),
    );
  }
}
