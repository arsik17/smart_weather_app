import 'dart:convert';

import 'package:smart_weather_app/models/weather_model.dart';
import 'package:http/http.dart' as http;

class WeatherService {
  static const String _apiKey = '7b585462caf9b8bf4c4427b49c43b3a2';
  Future<WeatherModel> fetchWeather(String city) async {
    final url = Uri.parse(
      'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$_apiKey&units=metric&lang=ru',
    );
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return WeatherModel.fromJson(data);
    } else {
      throw Exception('City not found');
    }
  }
}
