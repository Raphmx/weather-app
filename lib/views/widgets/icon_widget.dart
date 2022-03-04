import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({Key? key, required this.main}) : super(key: key);

  final String main;

  @override
  Widget build(BuildContext context) {
    return main == "Clouds"
        ? SizedBox(
            width: 50,
            child: Icon(
              MdiIcons.weatherCloudy,
              color: Colors.blueGrey[800],
            ),
          )
        : main == "Thunderstorm"
            ? SizedBox(
                width: 50,
                child: Icon(
                  MdiIcons.weatherLightningRainy,
                  color: Colors.blueGrey[900],
                ),
              )
            : main == "Drizzle"
                ? SizedBox(
                    width: 50,
                    child: Icon(
                      MdiIcons.weatherRainy,
                      color: Colors.blueGrey[900],
                    ),
                  )
                : main == "Rain"
                    ? SizedBox(
                        width: 50,
                        child: Icon(
                          MdiIcons.weatherPouring,
                          color: Colors.blueGrey[900],
                        ),
                      )
                    : main == "Snow"
                        ? const SizedBox(
                            width: 50,
                            child: Icon(
                              MdiIcons.weatherSnowyHeavy,
                              color: Colors.white,
                            ),
                          )
                        : main == "Clear"
                            ? SizedBox(
                                width: 50,
                                child: Icon(
                                  MdiIcons.whiteBalanceSunny,
                                  color: Colors.yellow[900],
                                ))
                            : const SizedBox(
                                width: 50,
                                child: Icon(
                                  MdiIcons.weatherFog,
                                  color: Colors.white,
                                ),
                              );
  }
}
