import 'package:flutter/material.dart';
import 'package:wheather_app/views/widgets/circle_button.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: CircleButton(height: 100, width: 100, icon: Icons.web_asset_sharp),
    ));
  }
}
