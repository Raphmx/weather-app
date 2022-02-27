// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:geocoding/geocoding.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:wheather_app/models/weather_data_model.dart';
// import 'package:wheather_app/services/weather_api_service.dart';
// import 'package:wheather_app/services/weather_determine.dart';
// import 'package:wheather_app/services/weather_get.dart';
// import 'package:wheather_app/views/widgets/circle_button.dart';
// import 'package:wheather_app/views/widgets/string_widget.dart';
// import 'package:wheather_app/views/widgets/text_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wheather_app/provider/weather_provider.dart';
import 'package:wheather_app/views/widgets/circle_button.dart';
import 'package:wheather_app/views/widgets/string_widget.dart';
import 'package:wheather_app/views/widgets/text_widget.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final api = ref.watch(weatherProvider);
    useEffect(() {
      WidgetsBinding.instance!.addPostFrameCallback((_) async {
        await api.getData();
      });
      return () {};
    }, []);

    final item = api.data;

    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color(0xFF1c324b),
        ),
        backgroundColor: const Color(0xFF1c324b),
        leading: IconButton(
          padding: const EdgeInsets.only(left: 8),
          icon: Image.asset(
            'assets/drawable-xxhdpi/Mask Group 2.png',
            scale: 2.5,
          ),
          onPressed: () {
            return;
          },
        ),
        actions: [
          IconButton(
              padding: const EdgeInsets.only(right: 8),
              onPressed: () {},
              icon: Image.asset(
                'assets/drawable-xxhdpi/Mask Group 4.png',
                scale: 2.5,
              ))
        ],
        title: const Text("Weather App"),
        centerTitle: true,
      ),
      body: item != null
          ? Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/images/clear_sky.jpg"), //weatherImage!),
                      opacity: 0.8,
                      fit: BoxFit.fill)),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  TextWidget(
                      weatherData: item,
                      cityName:
                          "${api.locModel!.townName} ${api.locModel!.cityName}"),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 350,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/drawable-xxhdpi/Path 117.png',
                              ),
                              fit: BoxFit.fill)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                                child: StringWidget(label: item.description)),
                            Image.network(
                              item.iconUrl,
                              width: 70,
                              height: 70,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                StringWidget(
                                    label:
                                        'Humidity: ${item.humidity.toString()}%'),
                                const StringWidget(
                                  label: 'Feels like',
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                StringWidget(
                                    label:
                                        'Wind: ${item.windSpeed.toString()} km/h'),
                                Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: StringWidget(
                                        label:
                                            "${item.feelsLike.toString()}°")),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  CircleButton(
                    height: 50,
                    width: 50,
                    icon: Icons.add,
                    onTap: () async {},
                  )
                ],
              ),
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
