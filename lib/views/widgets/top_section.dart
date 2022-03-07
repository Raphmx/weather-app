import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:wheather_app/core/styles.dart';
import 'package:wheather_app/core/utils.dart';
import 'package:wheather_app/models/location_model.dart';
import 'package:wheather_app/models/weather_condition_model.dart';
import 'package:wheather_app/views/widgets/icon_widget.dart';

class TopSection extends StatelessWidget {
  const TopSection({
    Key? key,
    required this.model,
    required this.locModel,
  }) : super(key: key);

  final WeatherConditionModel model;

  final LocationModel locModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        decoration: BoxDecoration(
            color: S.colors.boxShadowColor,
            borderRadius: BorderRadius.circular(30)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  MdiIcons.mapMarker,
                  size: 18,
                  color: S.colors.red,
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Text(
                    "${locModel.townName!} ${locModel.cityName!}",
                    style: S.textStyles.title,
                  ),
                )
              ],
            ),
            const SizedBox(height: 5),
            Text(
              Utils.formatDateTime(model.currently!.dt!),
              textAlign: TextAlign.start,
              style: S.textStyles.title,
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconWidget(
                        main: model.currently!.weather![0].main!, size: 45),
                    const SizedBox(width: 5),
                    Text(
                      "${model.currently!.temp!.toInt()}° ",
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 50),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "${model.currently!.weather![0].description}",
                      style: S.textStyles.title,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "${model.daily![0].temp!.min!.toInt()}°/${model.daily![0].temp!.max!.toInt()}°",
                      style: S.textStyles.title,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Feels Like ${model.currently!.feelsLike!.toInt()}°",
                      style: S.textStyles.title,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
