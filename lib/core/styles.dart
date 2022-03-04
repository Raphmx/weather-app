import 'package:flutter/material.dart';

class Styles {
  static TextStyle? topStyles() {
    var style = const TextStyle(
        fontSize: 44, fontWeight: FontWeight.w600, color: Colors.black);

    return style;
  }

  static Color? blueGreyColor = Colors.blueGrey[800];
  static Color? blue = Colors.blue;
  static Color? darkBlue = const Color(0xFF1c324b);
  static Color? sunYellow = Colors.yellow[900];
  static Color? white = Colors.white;
  static Color? lightBlue = Colors.lightBlue[600];
  static Color? boxShadowColor = Colors.white30.withOpacity(.2);
  static Color? red = const Color.fromARGB(255, 119, 23, 14);
}
