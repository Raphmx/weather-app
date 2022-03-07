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

    return LoadingOverlay(
      child: Scaffold(
          body: api.data != null && location.locModel != null
              ? Stack(
                  children: [
                    ImageWidget(main: api.data!.currently!.weather![0].main!),
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
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
                    ),
                  ],
                )
              : const SizedBox()),
    );
  }
}
