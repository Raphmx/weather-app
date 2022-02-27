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
}
