import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wheather_app/provider/location_provider.dart';
import 'package:wheather_app/provider/weather_provider.dart';
import 'package:wheather_app/views/widgets/card_widget.dart';
import 'package:wheather_app/views/widgets/image_widget.dart';
import 'package:wheather_app/views/widgets/loading_overlay.dart';
import 'package:wheather_app/views/widgets/top_section.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final api = ref.watch(weatherProvider);

    final location = ref.watch(locationProvider);
    useEffect(() {
      WidgetsBinding.instance!.addPostFrameCallback((_) async {
        await api.getData();

        await location.getLocation();
      });
      return () {};
    }, []);

    // final weatherData = api.data;

    return LoadingOverlay(
      child: Scaffold(
          body: api.data != null && location.locModel != null
              ? Stack(
                  children: [
                    ImageWidget(main: api.data!.currently!.weather![0].main!),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          TopSection(
                              model: api.data!, locModel: location.locModel!),
                          CardWidget(
                            hourly: api.data!.hourly,
                          ),
                          CardWidget(
                            daily: api.data!.daily,
                            scrollDirection: Axis.vertical,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : const SizedBox()
          // : Stack(
          //     children: [
          //       Opacity(
          //         opacity: .9,
          //         child: Container(
          //           alignment: Alignment.center,
          //           decoration: const BoxDecoration(
          //             image: DecorationImage(
          //                 image: AssetImage("assets/images/clear.jpg"),
          //                 opacity: 0.9,
          //                 fit: BoxFit.fill),
          //           ),
          //           width: MediaQuery.of(context).size.width,
          //           height: MediaQuery.of(context).size.height,
          //         ),
          //       ),
          //       AnimatedList(
          //         initialItemCount: list.length,
          //         itemBuilder: (ctx, i, animation) {
          //           return SlideTransition(
          //             position: Tween(
          //                     begin: const Offset(-1, 0),
          //                     end: const Offset(0.0, 1))
          //                 .animate(CurvedAnimation(
          //                     parent: controller, curve: Curves.decelerate)),
          //             child: Icon(list[i]),
          //           );
          //         },
          //       )
          //     ],
          //   ),
          ),
    );
  }
}
