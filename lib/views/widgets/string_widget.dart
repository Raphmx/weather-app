import 'package:flutter/material.dart';

class StringWidget extends StatelessWidget {
  const StringWidget({
    Key? key,
    required this.label,
  }) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(
        fontSize: 20,
        color: Color(0xFF1c324b),
      ),
    );
  }
}
