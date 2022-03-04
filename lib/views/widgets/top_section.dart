import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:wheather_app/core/styles.dart';
import 'package:wheather_app/core/utils.dart';
import 'package:wheather_app/models/weather_condition_model.dart';
import 'package:wheather_app/provider/weather_provider.dart';

class TopSection extends HookConsumerWidget {
  const TopSection({
    Key? key,
    required this.model,
  }) : super(key: key);

  final WeatherConditionModel model;

  @override
  Widget build(BuildContext context, ref) {
    final weather = ref.watch(weatherProvider);
    useEffect(() {
      WidgetsBinding.instance!.addPostFrameCallback((_) async {
        await weather.getData();
        weather.getIcon();
      });
      return () {};
    }, []);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white30.withOpacity(.2),
            borderRadius: BorderRadius.circular(30)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  MdiIcons.mapMarker,
                  size: 18,
                  color: Styles.red,
                ),
                const SizedBox(width: 5),
                Text(
                    "${weather.locModel!.townName!}, ${weather.locModel!.cityName!}")
              ],
            ),
            Text(
              Utils.formatDateTime(model.currently!.dt!),
              textAlign: TextAlign.start,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      weather.getIcon(),
                      size: 70,
                      color: Styles.blue,
                    ),
                    Text("${model.currently!.temp!.toInt()}° ",
                        textAlign: TextAlign.center, style: Styles.topStyles()),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("${model.currently!.weather![0].description}"),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                        "${model.daily![0].temp!.min}°/${model.daily![0].temp!.max}°"),
                    const SizedBox(
                      height: 3,
                    ),
                    Text("Feels like: ${model.currently!.feelsLike}°"),
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
