import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_weather_app/providers/weather_provider.dart';
import 'package:smart_weather_app/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => WeatherProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
        home: const HomePage(),
      ),
    );
  }
}
