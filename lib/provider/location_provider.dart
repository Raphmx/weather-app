import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wheather_app/models/location_model.dart';
import 'package:wheather_app/provider/state_provider.dart';
import 'package:wheather_app/services/location_service.dart';

final locationProvider = ChangeNotifierProvider(
  (ref) => WeatherProvider(ref),
);

class WeatherProvider extends ChangeNotifier {
  final ChangeNotifierProviderRef _ref;
  LocationModel? locModel;
  late final StateController<bool> _loading;

  late final LocationService _service;

  WeatherProvider(this._ref) {
    _service = _ref.watch(locationService);
    _loading = _ref.watch(loadingProvider.notifier);
  }

  Future<void> getLocation() async {
    _loading.state = true;
    try {
      locModel = await _service.getLocation();
      notifyListeners();
    } catch (_) {
      rethrow;
    }
    _loading.state = false;
  }
}
