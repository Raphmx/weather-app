import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:wheather_app/wheather_api_service.dart';
import 'package:wheather_app/wheather_data_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WheatherApi wheatherApi = WheatherApi();
  late WheatherData wheatherData;
  String latLong = "sky";
  String cityName = "City";

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
    getWheather();
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

  Future<void> getWheather() async {
    Position position = await _determinePosition();
    List<Placemark> placeMark =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    // print(placeMark);
    Placemark place = placeMark[0];
    cityName = place.locality!;

    wheatherData = await wheatherApi.getCurrentWheather(
        position.latitude, position.longitude);
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
        title: const Text("Wheather App"),
        centerTitle: true,
      ),
      body: FutureBuilder(
          future: getWheather(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              alignment: Alignment.center,
                              image: AssetImage(
                                'assets/images/shower_rain.jpg',
                              ),
                              fit: BoxFit.cover)),
                      width: double.infinity,
                      height: 650,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              wheatherData.temp.toString(),
                              style: const TextStyle(
                                  fontSize: 48,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              cityName,
                              style: const TextStyle(
                                  fontSize: 44,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                            ),
                            const SizedBox(
                              height: 150,
                            ),
                            Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 300,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            'assets/drawable-xxhdpi/Path 117.png',
                                          ),
                                          fit: BoxFit.fill)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
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
                                                    'Humidity: ${wheatherData.humidity.toString()}',
                                                    style: const TextStyle(
                                                        fontSize: 20,
                                                        color:
                                                            Color(0xFF1c324b))),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                    'Wind: ${wheatherData.windSpeed.toString()}',
                                                    style: const TextStyle(
                                                        fontSize: 20,
                                                        color:
                                                            Color(0xFF1c324b))),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 80.0),
                                              child: Column(
                                                children: [
                                                  const Text('Feels like',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color: Color(
                                                              0xFF1c324b))),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text(
                                                      wheatherData.feelsLike
                                                          .toString(),
                                                      style: const TextStyle(
                                                          fontSize: 20,
                                                          color: Color(
                                                              0xFF1c324b))),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 70,
                                              height: 70,
                                              decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                        'assets/icones/rain_icon.png',
                                                      ),
                                                      fit: BoxFit.fill)),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
                ],
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
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 35.0, bottom: 265),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              elevation: 8,
              onPressed: () async {
                Position position = await _determinePosition();
                List<Placemark> placeMark = await placemarkFromCoordinates(
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
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}


//  Image.asset(
//                 'assets/drawable-xxhdpi/Path 117.png',
//                 height: MediaQuery.of(context).size.height,
//                 fit: BoxFit.cover,
//               ),