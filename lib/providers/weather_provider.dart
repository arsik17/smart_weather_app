import 'package:flutter/material.dart';
import 'package:smart_weather_app/models/forecast_model.dart';
import 'package:smart_weather_app/models/weather_model.dart';
import 'package:smart_weather_app/services/weather_service.dart';

class WeatherProvider extends ChangeNotifier {
  final WeatherService _service = WeatherService();

  WeatherModel? weather;
  bool isLoading = false;
  String? error;
  List<ForecastModel> forecast = [];

  Future<void> fetchWeather(String city) async {
    try {
      isLoading = true;
      error = null;
      notifyListeners();

      weather = await _service.fetchWeather(city);
      forecast = await _service.fetchForecast(city);

      print('weather to string');
      print(weather.toString());

      WeatherModel test = WeatherModel(
        cityName: 'Test City',
        temperature: 25.0,
        icon: '01d',
        description: 'Clear sky',
        humidity: 40,
        windSpeed: 5.0,
      );

      WeatherModel test2 = WeatherModel(
        cityName: 'Test City',
        temperature: 25.0,
        icon: '01d',
        description: 'Clear sky',
        humidity: 40,
        windSpeed: 5.0,
      );

      print('equals check');
      print(test == test2);

      WeatherModel test2Copy = test2.copyWith(temperature: 30.0);

      print(test2Copy.toString());

      isLoading = false;
      notifyListeners();
    } catch (e) {
      print(e);
      isLoading = false;
      error = 'City not found';
      notifyListeners();
    }
  }
}
