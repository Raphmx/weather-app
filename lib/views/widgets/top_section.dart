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
    //final weather = ref.watch(weatherProvider);
    // final location = ref.watch(locationProvider);
    // useEffect(() {
    //   WidgetsBinding.instance!.addPostFrameCallback((_) async {
    //     //await weather.getData();
    //     await location.getLocation();
    //   });
    //   return () {};
    // }, []);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
            color: S.colors.boxShadowColor,
            borderRadius: BorderRadius.circular(30)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  MdiIcons.mapMarker,
                  size: 18,
                ),
                const SizedBox(width: 5),
                Text(
                  "${locModel.townName!} ${locModel.cityName!}",
                  style: S.textStyles.style,
                )
              ],
            ),
            Text(
              Utils.formatDateTime(model.currently!.dt!),
              textAlign: TextAlign.start,
              style: S.textStyles.style,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconWidget(main: model.currently!.weather![0].main!),
                    Text(
                      "${model.currently!.temp!.toInt()}° ",
                      textAlign: TextAlign.center,
                      style: S.textStyles.style,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "${model.currently!.weather![0].description}",
                      style: S.textStyles.style,
                    ),
                    Text(
                      "${model.daily![0].temp!.min}°/${model.daily![0].temp!.max}°",
                      style: S.textStyles.style,
                    ),
                    Text(
                      "Feels Like ${model.currently!.feelsLike}",
                      style: S.textStyles.style,
                    ),
                  ],
                )
              ],
            ),

            // Text(
            //   "${item.currently!.temp!.toInt()}° ",
            //   textAlign: TextAlign.center,
            //   style: const TextStyle(
            //       fontSize: 44,
            //       fontWeight: FontWeight.bold,
            //       color: Colors.white),
            // ),
            // const SizedBox(
            //   height: 15,
            // ),
            // Text(
            //   "${api.locModel!.townName!} ${api.locModel!.cityName!}",
            //   textAlign: TextAlign.center,
            //   style: const TextStyle(
            //       fontSize: 34, color: Colors.white),
            // ),
            // const SizedBox(
            //   height: 10,
            // ),
            // Center(
            //   child: Text(
            //     item.currently!.weather![0].main!,
            //     style: const TextStyle(
            //       fontSize: 20,
            //       color: Color(0xFF1c324b),
            //     ),
            //   ),
            // ),
            // Icon(
            //   api.getIcon(),
            //   size: 70,
            //   color: Colors.white,
            // ),
            // RowWidget(
            //     leftLabel:
            //         ' Humidity: ${item.currently!.humidity}%',
            //     rightLabel: 'Feels like'),
            // const SizedBox(
            //   height: 8,
            // ),
            // RowWidget(
            //     leftLabel:
            //         'Wind: ${item.currently!.windSpeed} km/h',
            //     rightLabel: "${item.currently!.feelsLike}°")
          ],
        ),
      ),
    );
  }
}
