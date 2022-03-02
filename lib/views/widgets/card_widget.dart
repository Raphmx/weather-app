import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    this.label,
    this.degree,
    this.length,
    this.scrollDirection,
    this.borderRadius,
    this.padding,
  }) : super(key: key);
  final String? label;
  final int? degree;
  final int? length;
  final Axis? scrollDirection;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Container(
        height: 150,
        width: double.infinity,
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white30.withOpacity(.2),
            borderRadius: BorderRadius.circular(borderRadius ?? 30)),
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: scrollDirection ?? Axis.vertical,
          itemCount: length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(label ?? ""),
                  const SizedBox(height: 5),
                  const Icon(MdiIcons.weatherCloudy),
                  const SizedBox(height: 5),
                  Text("$degree°"),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
