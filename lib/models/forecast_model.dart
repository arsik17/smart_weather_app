class ForecastModel {
  final String date;
  final double temperature;
  final String icon;

  ForecastModel({
    required this.date,
    required this.temperature,
    required this.icon,
  });

  factory ForecastModel.fromJson(Map<String, dynamic> json) {
    return ForecastModel(
      date: json['dt_txt'],
      temperature: (json['main']['temp'] as num).toDouble(),
      icon: json['weather'][0]['icon'],
    );
  }
}
