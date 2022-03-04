import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:wheather_app/core/styles.dart';

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
              color: Styles.blueGreyColor,
            ),
          )
        : main == "Thunderstorm"
            ? SizedBox(
                width: 50,
                child: Icon(
                  MdiIcons.weatherLightningRainy,
                  color: Styles.blueGreyColor,
                ),
              )
            : main == "Drizzle"
                ? SizedBox(
                    width: 50,
                    child: Icon(
                      MdiIcons.weatherRainy,
                      color: Styles.blueGreyColor,
                    ),
                  )
                : main == "Rain"
                    ? SizedBox(
                        width: 50,
                        child: Icon(
                          MdiIcons.weatherPouring,
                          color: Styles.blueGreyColor,
                        ),
                      )
                    : main == "Snow"
                        ? SizedBox(
                            width: 50,
                            child: Icon(
                              MdiIcons.weatherSnowyHeavy,
                              color: Styles.white,
                            ),
                          )
                        : main == "Clear"
                            ? SizedBox(
                                width: 50,
                                child: Icon(
                                  MdiIcons.whiteBalanceSunny,
                                  color: Styles.sunYellow,
                                ))
                            : SizedBox(
                                width: 50,
                                child: Icon(
                                  MdiIcons.weatherFog,
                                  color: Styles.white,
                                ),
                              );
  }
}
