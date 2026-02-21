import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_weather_app/providers/weather_provider.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late TextEditingController controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.read<WeatherProvider>();

    return Scaffold(
      appBar: AppBar(title: Text('Search by city')),
      body: Padding(
        padding: EdgeInsetsGeometry.all(16),
        child: Column(
          children: [
            TextFormField(
              controller: controller,
              decoration: InputDecoration(hintText: 'Enter city name'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await provider.fetchWeather(controller.text);
                if (provider.error == null && mounted) {
                  Navigator.pop(context);
                } else {
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text('City not Found')));
                }
              },
              child: Text('Search'),
            ),
          ],
        ),
      ),
    );
  }
}
