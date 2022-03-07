import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:wheather_app/core/styles.dart';
import 'package:wheather_app/core/utils.dart';
import 'package:wheather_app/models/daily_model.dart';
import 'package:wheather_app/views/widgets/icon_widget.dart';

class DailyWidget extends StatelessWidget {
  const DailyWidget({
    Key? key,
    required this.daily,
  }) : super(key: key);

  final DailyModel daily;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 100,
            child: Text(Utils.formatDateTimeDay(daily.dt!)),
          ),
          Row(
            children: [
              Icon(
                daily.humidity! > 75
                    ? MdiIcons.water
                    : daily.humidity! > 35
                        ? MdiIcons.waterOpacity
                        : MdiIcons.waterOutline,
                color: S.colors.lightBlue,
                size: 18,
              ),
              Text(
                "%${daily.humidity}",
                style: S.textStyles.style,
              ),
            ],
          ),
          IconWidget(main: daily.weather![0].main!),
          SizedBox(
            width: 100,
            child: Text(
              "${daily.temp!.min}°/${daily.temp!.max}°",
              textAlign: TextAlign.end,
              style: S.textStyles.style,
            ),
          )
        ],
      ),
    );
  }
}
