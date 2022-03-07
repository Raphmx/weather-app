import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wheather_app/models/weather_condition_model.dart';
import 'package:wheather_app/provider/state_provider.dart';
import 'package:wheather_app/services/weather_api_service.dart';

final weatherProvider = ChangeNotifierProvider(
  (ref) => WeatherProvider(ref),
);

class WeatherProvider extends ChangeNotifier {
  final ChangeNotifierProviderRef _ref;
  WeatherConditionModel? data;

  late final StateController<bool> _loading;
  late final WeatherApi _service;

  WeatherProvider(this._ref) {
    _service = _ref.watch(weatherService);
    _loading = _ref.watch(loadingProvider.notifier);
  }

  Future<void> getData() async {
    _loading.state = true;
    try {
      data = await _service.getCurrentWheather();

      notifyListeners();
    } catch (e) {
      rethrow;
    }
    _loading.state = false;
  }
}
