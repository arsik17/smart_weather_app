import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_weather_app/providers/weather_provider.dart';
import 'package:smart_weather_app/screens/search_page.dart';
import 'package:smart_weather_app/widgets/weather_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<WeatherProvider>().fetchWeather('Astana');
    });
  }

  Color _getBackgroundColor(double temp) {
    if (temp <= 0) return Colors.blue.shade900;
    if (temp <= 15) return Colors.blue;
    if (temp <= 25) return Colors.amber;
    return Colors.amber.shade900;
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<WeatherProvider>();

    return Scaffold(
      body: SafeArea(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          color: provider.weather == null
              ? Colors.grey
              : _getBackgroundColor(provider.weather!.temperature),
          child: Center(
            child: AnimatedSwitcher(
              duration: Duration(milliseconds: 500),

              child: provider.isLoading
                  ? CircularProgressIndicator()
                  : provider.error != null
                  ? Text(provider.error!)
                  : provider.weather != null
                  ? WeatherCard(
                      weatherModel: provider.weather!,
                      forecast: provider.forecast,
                    )
                  : Text('Error'),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(_createRoute());
        },
        child: Icon(Icons.search_rounded),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secAnimation) {
        return SearchPage();
      },
      transitionsBuilder: (context, animation, secondaryAnimation, widget) {
        final fade = Tween(begin: 0.0, end: 1.0).animate(animation);
        return FadeTransition(opacity: fade, child: widget);
      },
    );
  }
}
