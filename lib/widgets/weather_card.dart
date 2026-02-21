import 'package:flutter/material.dart';
import 'package:smart_weather_app/models/weather_model.dart';

class WeatherCard extends StatefulWidget {
  const WeatherCard({super.key, required this.weatherModel});

  final WeatherModel weatherModel;

  @override
  State<WeatherCard> createState() => _WeatherCardState();
}

class _WeatherCardState extends State<WeatherCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slide;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );
    _slide = Tween(
      begin: Offset(0, 0.5),
      end: Offset(0, 0),
    ).animate(_controller);

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _slide,
      child: Card(
        color: Colors.white60,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(widget.weatherModel.cityName),
              Text('${widget.weatherModel.temperature} C'),
              Image.network(
                'https://openweathermap.org/img/wn/${widget.weatherModel.icon}@2x.png',
              ),
              Text(widget.weatherModel.description),
              Text('Humidity: ${widget.weatherModel.humidity}'),
              Text('Wind Speed: ${widget.weatherModel.windSpeed}'),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
