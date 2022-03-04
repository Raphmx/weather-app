import 'package:flutter/material.dart';
import 'package:wheather_app/models/currently_model.dart';
import 'package:wheather_app/models/daily_model.dart';
import 'package:wheather_app/views/widgets/daily_widget.dart';
import 'package:wheather_app/views/widgets/hourly_widget.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    this.borderRadius,
    this.padding,
    this.scrollDirection = Axis.horizontal,
    this.hourly,
    this.daily,
    this.height,
  }) : super(key: key);

  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  final Axis scrollDirection;
  final List<CurrentlyModel>? hourly;
  final List<DailyModel>? daily;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          padding ?? const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Container(
        height: scrollDirection == Axis.horizontal ? height ?? 150 : null,
        width: double.infinity,
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white30.withOpacity(.2),
          borderRadius: BorderRadius.circular(borderRadius ?? 30),
        ),
        child: ListView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          scrollDirection: scrollDirection,
          itemCount: hourly != null ? hourly!.length : daily!.length,
          itemBuilder: (_, i) {
            return hourly != null
                ? HourlyWidget(
                    hourly: hourly![i],
                  )
                : DailyWidget(daily: daily![i]);
          },
        ),
      ),
    );
  }
}
