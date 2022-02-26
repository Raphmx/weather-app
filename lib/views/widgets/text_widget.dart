import 'package:flutter/material.dart';
import 'package:wheather_app/models/weather_data_model.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
    required this.weatherData,
    required this.cityName,
  }) : super(key: key);

  final WeatherData weatherData;
  final String cityName;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(),
      width: MediaQuery.of(context).size.width,
      height: 300,
      child: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              " ${weatherData.temp}° ",
              style: const TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              cityName,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 34, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
