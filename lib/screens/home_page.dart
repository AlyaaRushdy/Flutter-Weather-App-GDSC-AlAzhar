import 'package:flutter/material.dart';
import 'package:weather_app/screens/search_page.dart';
import 'package:weather_app/widgets/no_result_widget.dart';
import 'package:weather_app/widgets/weather_data_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    bool dataLoaded = true;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SearchPage(),
                ),
              );
            },
            icon: const Icon(
              Icons.search_rounded,
              size: 26,
            ),
          ),
        ],
        title: const Text("Weather App"),
        backgroundColor:
            dataLoaded ? Colors.orange : Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        //elevation: 1,
        shape: Border(
          bottom: BorderSide(width: 1, color: Colors.grey.shade700),
        ),
      ),
      body: dataLoaded ? const WeatherDataContainer() : const NoResultWidget(),
    );
  }
}
