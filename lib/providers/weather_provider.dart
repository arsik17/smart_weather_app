import 'package:flutter/material.dart';
import 'package:smart_weather_app/models/weather_model.dart';
import 'package:smart_weather_app/services/weather_service.dart';

class WeatherProvider extends ChangeNotifier {
  final WeatherService _service = WeatherService();

  WeatherModel? weather;
  bool isLoading = false;
  String? error;

  Future<void> fetchWeather(String city) async {
    try {
      isLoading = true;
      error = null;
      notifyListeners();

      weather = await _service.fetchWeather(city);

      isLoading = false;
      notifyListeners();
    } catch (e) {
      isLoading = false;
      error = 'City not found';
      notifyListeners();
    }
  }
}
