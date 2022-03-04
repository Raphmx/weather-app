import 'package:flutter/material.dart';
import 'package:wheather_app/core/styles.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    Key? key,
    this.icon,
    this.onTap,
    this.height,
    this.width,
  }) : super(key: key);

  final IconData? icon;
  final void Function()? onTap;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 60,
      bottom: 320,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Styles.boxShadowColor!,
                spreadRadius: 2,
                blurRadius: 7,
                offset: const Offset(0, 4),
              ),
            ],
            shape: BoxShape.circle,
            color: Styles.white,
          ),
          child: Icon(
            icon, //Icons.add,
            color: Styles.darkBlue,
            size: 32,
          ),
        ),
      ),
    );
  }
}
