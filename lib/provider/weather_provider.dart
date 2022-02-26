import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wheather_app/models/weather_data_model.dart';
import 'package:wheather_app/services/weather_api_service.dart';

final weatherProvider = ChangeNotifierProvider(
  (ref) => WeatherProvider(ref),
);

class WeatherProvider extends ChangeNotifier {
  final ChangeNotifierProviderRef _ref;
  WeatherData? data;
  late final WeatherApi _service;

  WeatherProvider(this._ref) {
    _service = _ref.watch(weatherService);
  }

  Future<void> getData() async {
    try {
      data = await _service.getCurrentWheather();

      notifyListeners();
    } catch (e) {
      print(e);
    }
  }
}
