import 'package:flutter/material.dart';
import 'package:fluttericon/meteocons_icons.dart';
import 'package:wheather_app/models/currently_model.dart';
import 'package:wheather_app/views/home.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    Key? key,
    required this.hourly,
    required this.icon,
    required this.hour,
  }) : super(key: key);

  final CurrentlyModel hourly;
  final IconData icon;
  final String hour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(hour),
          const SizedBox(height: 5),
          IconWidget(main: hourly.weather![0].main!),
          const SizedBox(height: 5),
          Text("${hourly.temp!}°"),
        ],
      ),
    );
  }
}
