import 'package:flutter/material.dart';
import 'package:smart_weather_app/models/forecast_model.dart';
import 'package:smart_weather_app/models/weather_model.dart';

class WeatherCard extends StatefulWidget {
  const WeatherCard({
    super.key,
    required this.weatherModel,
    required this.forecast,
  });

  final WeatherModel weatherModel;
  final List<ForecastModel> forecast;

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
        color: Colors.white24,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.weatherModel.cityName,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
              Text(
                '${widget.weatherModel.temperature.toInt()} C',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              Image.network(
                'https://openweathermap.org/img/wn/${widget.weatherModel.icon}@2x.png',
              ),
              Text(widget.weatherModel.description),
              Text('Humidity: ${widget.weatherModel.humidity}'),
              Text('Wind Speed: ${widget.weatherModel.windSpeed}'),
              SizedBox(height: 20),
              Text('Weather forecast for 5 days'),
              SizedBox(height: 10),
              SizedBox(
                height: 120,
                child: ListView.builder(
                  itemCount: widget.forecast.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final day = widget.forecast[index];
                    return Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Text(day.date.substring(5, 10)),
                          Image.network(
                            'https://openweathermap.org/img/wn/${day.icon}@2x.png',
                            width: 40,
                          ),
                          Text('${day.temperature.toInt()} C'),
                        ],
                      ),
                    );
                  },
                ),
              ),
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
