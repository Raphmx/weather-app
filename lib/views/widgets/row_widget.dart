import 'package:flutter/material.dart';
import 'package:wheather_app/core/styles.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({
    Key? key,
    required this.leftLabel,
    required this.rightLabel,
  }) : super(key: key);
  final String leftLabel;
  final String rightLabel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftLabel,
          style: TextStyle(
            fontSize: 20,
            color: Styles.darkBlue,
          ),
        ),
        Text(
          rightLabel,
          style: TextStyle(
            fontSize: 20,
            color: Styles.darkBlue,
          ),
        ),
      ],
    );
  }
}
