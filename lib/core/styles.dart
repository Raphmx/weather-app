import 'package:flutter/material.dart';

class S {
  static final colors = _Colors();
  static final textStyles = _TextStyles();
}

class _Colors {
  final blueGreyColor = Colors.blueGrey[800];
  final blue = Colors.blue;
  final darkBlue = const Color(0xFF1c324b);
  final sunYellow = Colors.yellow[900];
  final white = Colors.white;
  final lightBlue = Colors.lightBlue[600];
  final boxShadowColor = Colors.white30.withOpacity(.2);
  final red = const Color.fromARGB(255, 119, 23, 14);
  final black = Colors.black;
}

class _TextStyles {
  final style = const TextStyle(
    fontSize: 44,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
}
