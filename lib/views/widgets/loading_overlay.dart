import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:wheather_app/provider/state_provider.dart';

class LoadingOverlay extends HookConsumerWidget {
  final Widget child;
  final Widget? loadingWidget;
  const LoadingOverlay({
    Key? key,
    required this.child,
    this.loadingWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final isBusy = ref.watch(loadingProvider);
    if (!isBusy) return child;
    return Stack(
      children: [
        Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          alignment: Alignment.center,
          child: Center(
              child: Lottie.asset(
            'assets/animation/weather.json',
            animate: true,
          )),
        ),
      ],
    );
  }
}
