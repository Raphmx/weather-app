import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:wheather_app/core/styles.dart';
import 'package:wheather_app/core/utils.dart';
import 'package:wheather_app/models/currently_model.dart';
import 'package:wheather_app/views/widgets/icon_widget.dart';

class HourlyWidget extends StatelessWidget {
  const HourlyWidget({
    Key? key,
    required this.hourly,
  }) : super(key: key);

  final CurrentlyModel hourly;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            Utils.formatDateTimeHour(hourly.dt!),
          ),
          const SizedBox(height: 5),
          IconWidget(main: hourly.weather![0].main!),
          const SizedBox(height: 5),
          Text("${hourly.temp!}°"),
          const SizedBox(height: 5),
          Row(
            children: [
              Icon(
                hourly.humidity! > 75
                    ? MdiIcons.water
                    : hourly.humidity! > 35
                        ? MdiIcons.waterOpacity
                        : MdiIcons.waterOutline,
                color: Styles.lightBlue,
                size: 18,
              ),
              Text("%${hourly.humidity}"),
            ],
          ),
        ],
      ),
    );
  }
}
