import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:wheather_app/services/weather_api_service.dart';
import 'package:wheather_app/models/weather_data_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherApi weatherApi = WeatherApi();
  late WeatherData weatherData;
  String latLong = "sky";
  String cityName = "City";
  late String weatherImage;

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }

  // Future<void> getAdressFromLatLong(Position position) async {
  //   List<Placemark> placeMark =
  //       await placemarkFromCoordinates(position.latitude, position.longitude);
  //   Placemark place = placeMark[0];

  //   setState(() {
  //     cityName = '${place.name}';
  //   });
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getWeather();
  }

  // getWheather() async {
  //   Position position = await _determinePosition();
  //   List<Placemark> placeMark =
  //       await placemarkFromCoordinates(position.latitude, position.longitude);
  //   // print(placeMark);
  //   Placemark place = placeMark[0];

  //       latLong = 'lat : ${position.latitude} long: ${position.longitude}';
  //     cityName = place.locality!;
  //   // setState(() {
  //   //   latLong = 'lat : ${position.latitude} long: ${position.longitude}';
  //   //   cityName = place.locality!;
  //   // });

  //   // wheatherApi.getCurrentWheather(position.latitude, position.longitude);
  // }

  Future<void> getWeather() async {
    Position position = await _determinePosition();
    List<Placemark> placeMark =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    // print(placeMark);
    Placemark place = placeMark[0];
    cityName = place.subAdministrativeArea! + ",\n" + place.administrativeArea!;

    weatherData = await weatherApi.getCurrentWheather(
        position.latitude, position.longitude);

    if (weatherData.description == "clear sky") {
      weatherImage = 'assets/images/clear_sky.jpg';
    } else if (weatherData.description == "few clouds") {
      weatherImage = 'assets/images/few_clouds.jpg';
    } else if (weatherData.description == "scattered clouds") {
      weatherImage = 'assets/images/scattered_clouds.jpg';
    } else if (weatherData.description == "broken clouds") {
      weatherImage = 'assets/images/broken_clouds.jpg';
    } else if (weatherData.description == "shower rain") {
      weatherImage = 'assets/images/shower_rain.jpg';
    } else if (weatherData.description == "rain") {
      weatherImage = 'assets/images/rain.jpg';
    } else if (weatherData.description == "thunderstorm") {
      weatherImage = 'assets/images/thunderstorm.jpg';
    } else if (weatherData.description == "snow") {
      weatherImage = 'assets/images/snow.jpg';
    } else if (weatherData.description == "mist") {
      weatherImage = 'assets/images/mist.jpg';
    }
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
          future: getWeather(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage(weatherImage),
                        opacity: 0.8,
                        fit: BoxFit.fill)),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(),
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              " ${weatherData.temp.toString()}° ",
                              style: const TextStyle(
                                  fontSize: 44,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              cityName,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 34, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                                child: Text(
                              weatherData.description,
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            )),
                            Image.network(
                              weatherData.iconUrl,
                              width: 70,
                              height: 70,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                            'Humidity: ${weatherData.humidity.toString()}%',
                                            style: const TextStyle(
                                                fontSize: 20,
                                                color: Color(0xFF1c324b))),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                            'Wind: ${weatherData.windSpeed.toString()} km/h',
                                            style: const TextStyle(
                                                fontSize: 20,
                                                color: Color(0xFF1c324b))),
                                      ],
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 80.0),
                                      child: Column(
                                        children: [
                                          const Text('Feels like',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Color(0xFF1c324b))),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                              "${weatherData.feelsLike.toString()}°",
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  color: Color(0xFF1c324b))),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 60,
                      bottom: 320,
                      child: FloatingActionButton(
                        elevation: 5,
                        backgroundColor: Colors.white,
                        onPressed: () async {
                          Position position = await _determinePosition();
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
                        child: const Icon(
                          Icons.add,
                          color: Color(0xFF1c324b),
                          size: 32,
                        ),
                      ),
                    ),
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
