import 'package:flutter/widgets.dart';
import 'package:fluttericon/meteocons_icons.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wheather_app/models/location_model.dart';
import 'package:wheather_app/models/weather_condition_model.dart';
import 'package:wheather_app/services/location_service.dart';
import 'package:wheather_app/services/weather_api_service.dart';

final weatherProvider = ChangeNotifierProvider(
  (ref) => WeatherProvider(ref),
);

class WeatherProvider extends ChangeNotifier {
  final ChangeNotifierProviderRef _ref;
  WeatherConditionModel? data;
  LocationModel? locModel;
  String? image;

  IconData? mainIcon;
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
      rethrow;
    }
  }

  String getImage() {
    if (data!.currently!.weather![0].main == "Thunderstorm") {
      image = 'assets/images/thunder.jpg';
      return image!;
    } else if (data!.currently!.weather![0].main == "Drizzle") {
      image = 'assets/images/drizzle.jpg';
      return image!;
    } else if (data!.currently!.weather![0].main == "Rain") {
      image = 'assets/images/rain.jpg';
      return image!;
    } else if (data!.currently!.weather![0].main == "Snow") {
      image = 'assets/images/snow.jpg';
      return image!;
    } else if (data!.currently!.weather![0].main == "Clear") {
      image = 'assets/images/clear_sky.jpg';
      return image!;
    } else if (data!.currently!.weather![0].main == "Clouds") {
      image = 'assets/images/cloud.jpg';
      return image!;
    } else {
      image = 'assets/images/mist.jpg';
      return image!;
    }
  }

  IconData getIcon() {
    if (data!.currently!.weather![0].main == "Thunderstorm") {
      mainIcon = Meteocons.cloud_flash_inv;
      return mainIcon!;
    } else if (data!.currently!.weather![0].main == "Drizzle") {
      mainIcon = Meteocons.drizzle_inv;
      return mainIcon!;
    } else if (data!.currently!.weather![0].main == "Rain") {
      mainIcon = Meteocons.rain_inv;
      return mainIcon!;
    } else if (data!.currently!.weather![0].main == "Snow") {
      mainIcon = Meteocons.snow_inv;
      return mainIcon!;
    } else if (data!.currently!.weather![0].main == "Clear") {
      mainIcon = Meteocons.sun;
      return mainIcon!;
    } else if (data!.currently!.weather![0].main == "Clouds") {
      mainIcon = Meteocons.clouds_inv;
      return mainIcon!;
    } else {
      mainIcon = Meteocons.mist;
      return mainIcon!;
    }
  }
}
