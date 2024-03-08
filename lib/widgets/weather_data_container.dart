import 'package:flutter/material.dart';

class WeatherDataContainer extends StatelessWidget {
  const WeatherDataContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.orange,
            Colors.white70,
            Colors.orange,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Cairo",
            style: TextStyle(fontSize: 46, fontWeight: FontWeight.bold),
          ),
          const Text(
            "updated at 10:25",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                "https://static.vecteezy.com/system/resources/previews/009/663/724/original/sun-sun-ray-icon-transparent-free-png.png",
                width: 90,
              ),
              const Text(
                "39",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              const Column(
                children: [
                  Text(
                    "min. Temp: 24",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "max. Temp: 42",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "Sunny",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
