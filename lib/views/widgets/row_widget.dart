import 'package:flutter/material.dart';

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
          style: const TextStyle(
            fontSize: 20,
            color: Color(0xFF1c324b),
          ),
        ),
        Text(
          rightLabel,
          style: const TextStyle(
            fontSize: 20,
            color: Color(0xFF1c324b),
          ),
        ),
      ],
    );
  }
}
