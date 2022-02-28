import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wheather_app/models/location_model.dart';
import 'package:wheather_app/models/weather_data_model.dart';
import 'package:wheather_app/services/location_service.dart';
import 'package:wheather_app/services/weather_api_service.dart';

final weatherProvider = ChangeNotifierProvider(
  (ref) => WeatherProvider(ref),
);

class WeatherProvider extends ChangeNotifier {
  final ChangeNotifierProviderRef _ref;
  WeatherData? data;
  LocationModel? locModel;
  String? image;
  late final WeatherApi _service;
  late final LocationService _locService;

  WeatherProvider(this._ref) {
    _service = _ref.watch(weatherService);
    _locService = _ref.watch(locationService);
  }

  Future<void> getData() async {
    try {
      data = await _service.getCurrentWheather();
      locModel = await _locService.getLocation();

      notifyListeners();
    } catch (e) {
      print(e);
    }
  }

  String getImage() {
    if (data!.description == "clear sky") {
      image = 'assets/images/clear_sky.jpg';
      return image!;
    } else if (data!.description == "few clouds") {
      image = 'assets/images/few_clouds.jpg';
      return image!;
    } else if (data!.description == "scattered clouds") {
      image = 'assets/images/scattered_clouds.jpg';
      return image!;
    } else if (data!.description == "broken clouds") {
      image = 'assets/images/broken_clouds.jpg';
      return image!;
    } else if (data!.description == "shower rain") {
      image = 'assets/images/shower_rain.jpg';
      return image!;
    } else if (data!.description == "rain") {
      image = 'assets/images/rain.jpg';
      return image!;
    } else if (data!.description == "thunderstorm") {
      image = 'assets/images/thunderstorm.jpg';
      return image!;
    } else if (data!.description == "snow") {
      image = 'assets/images/snow.jpg';
      return image!;
    } else if (data!.description == "mist") {
      image = 'assets/images/mist.jpg';
      return image!;
    } else {
      image = 'assets/images/cloudy.jpg';
      return image!;
    }
  }
}
