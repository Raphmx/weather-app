import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:wheather_app/models/weather_data_model.dart';
import 'package:wheather_app/services/weather_determine.dart';
import 'package:wheather_app/services/weather_get.dart';
import 'package:wheather_app/views/widgets/circle_button.dart';
import 'package:wheather_app/views/widgets/string_widget.dart';
import 'package:wheather_app/views/widgets/text_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherGet weatherGet = WeatherGet();
  late WeatherData weatherData;
  WeatherDetermine weatherDetermine = WeatherDetermine();
  String latLong = "sky";
  String cityName = "City";
  String? weatherImage;

  @override
  void initState() {
    super.initState();
    weatherGet.getWeather();
  }

  @override
  Widget build(BuildContext context) {
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
      body: FutureBuilder(
          future: weatherGet.getWeather(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage(weatherImage!),
                        opacity: 0.8,
                        fit: BoxFit.fill)),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    TextWidget(weatherData: weatherData!, cityName: cityName),
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
                                  child: StringWidget(
                                      label: weatherData!.description)),
                              Image.network(
                                weatherData!.iconUrl,
                                width: 70,
                                height: 70,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  StringWidget(
                                      label:
                                          'Humidity: ${weatherData!.humidity.toString()}%'),
                                  const StringWidget(
                                    label: 'Feels like',
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  StringWidget(
                                      label:
                                          'Wind: ${weatherData!.windSpeed.toString()} km/h'),
                                  Padding(
                                      padding:
                                          const EdgeInsets.only(right: 10.0),
                                      child: StringWidget(
                                          label:
                                              "${weatherData!.feelsLike.toString()}°")),
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
                      onTap: () async {
                        Position position =
                            await weatherDetermine.determinePosition();
                        List<Placemark> placeMark =
                            await placemarkFromCoordinates(
                                position.latitude, position.longitude);
                        // print(placeMark);
                        Placemark place = placeMark[0];
                        setState(() {
                          latLong =
                              'lat : ${position.latitude} long: ${position.longitude}';
                          cityName = place.locality!;
                        });
                      },
                    )
                  ],
                ),
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.blueAccent,
                ),
              );
            }
            return Container();
          }),
    );
  }
}
