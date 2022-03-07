import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wheather_app/core/styles.dart';
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
    const String backgroundImage = "assets/images/cloud.jpg";
    final isBusy = ref.watch(loadingProvider);
    if (!isBusy) return child;
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(backgroundImage),
                opacity: 0.9,
                fit: BoxFit.fill),
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        Opacity(
          child: ModalBarrier(dismissible: false, color: S.colors.black),
          opacity: 0.5,
        ),
        Center(
          child: Container(
            height: 100,
            width: 100,
            color: Colors.black45,
            child: Center(
                child: loadingWidget ??
                    const Center(
                      child: CircularProgressIndicator(),
                    )),
          ),
        ),
      ],
    );
  }
}
