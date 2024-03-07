import 'package:flutter/material.dart';
import 'package:weather_app/screens/search_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
        backgroundColor: Colors.blue.shade700,
        foregroundColor: Colors.white,
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Text(
            "There's No Result 😔 Try Searching From The Above Search Icon 🔍",
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }
}
