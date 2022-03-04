import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wheather_app/provider/weather_provider.dart';
import 'package:wheather_app/views/widgets/card_widget.dart';
import 'package:wheather_app/views/widgets/top_section.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final api = ref.watch(weatherProvider);
    useEffect(() {
      WidgetsBinding.instance!.addPostFrameCallback((_) async {
        await api.getData();
        api.getImage();
      });
      return () {};
    }, []);

    final weatherData = api.data;

    return Scaffold(
      body: weatherData != null
          ? Opacity(
              opacity: .9,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(api.image!),
                        opacity: 0.9,
                        fit: BoxFit.fill)),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TopSection(model: weatherData),
                      CardWidget(
                        hourly: weatherData.hourly,
                      ),
                      CardWidget(
                        daily: weatherData.daily,
                        scrollDirection: Axis.vertical,
                      ),
                    ],
                  ),
                ),
              ),
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
