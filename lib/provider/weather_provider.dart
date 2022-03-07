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
  //LocationModel? locModel;
  //String? image;

  late final StateController<bool> _loading;

  //IconData? mainIcon;
  late final WeatherApi _service;
  // late final LocationService _locService;

  WeatherProvider(this._ref) {
    _service = _ref.watch(weatherService);
    //_locService = _ref.watch(locationService);
    _loading = _ref.watch(loadingProvider.notifier);
  }

  Future<void> getData() async {
    _loading.state = true;
    try {
      data = await _service.getCurrentWheather();
      //locModel = await _locService.getLocation();

      notifyListeners();
    } catch (e) {
      rethrow;
    }
    _loading.state = false;
  }

  // String getImage() {
  //   if (data!.currently!.weather![0].main == "Thunderstorm") {
  //     image = 'assets/images/thunderstorm.jpg';
  //     return image!;
  //   } else if (data!.currently!.weather![0].main == "Drizzle") {
  //     image = 'assets/images/drizzle.jpg';
  //     return image!;
  //   } else if (data!.currently!.weather![0].main == "Rain") {
  //     image = 'assets/images/rainy.jpg';
  //     return image!;
  //   } else if (data!.currently!.weather![0].main == "Snow") {
  //     image = 'assets/images/snow.jpg';
  //     return image!;
  //   } else if (data!.currently!.weather![0].main == "Clear") {
  //     image = 'assets/images/clear.jpg';
  //     return image!;
  //   } else if (data!.currently!.weather![0].main == "Clouds") {
  //     image = 'assets/images/cloud.jpg';
  //     return image!;
  //   } else {
  //     image = 'assets/images/mist.jpg';
  //     return image!;
  //   }
  // }

  // IconData getIcon() {
  //   if (data!.currently!.weather![0].main == "Thunderstorm") {
  //     mainIcon = MdiIcons.weatherLightningRainy;
  //     return mainIcon!;
  //   } else if (data!.currently!.weather![0].main == "Drizzle") {
  //     mainIcon = MdiIcons.weatherRainy;
  //     return mainIcon!;
  //   } else if (data!.currently!.weather![0].main == "Rain") {
  //     mainIcon = MdiIcons.weatherPouring;
  //     return mainIcon!;
  //   } else if (data!.currently!.weather![0].main == "Snow") {
  //     mainIcon = MdiIcons.weatherSnowyHeavy;
  //     return mainIcon!;
  //   } else if (data!.currently!.weather![0].main == "Clear") {
  //     mainIcon = MdiIcons.whiteBalanceSunny;
  //     return mainIcon!;
  //   } else if (data!.currently!.weather![0].main == "Clouds") {
  //     mainIcon = MdiIcons.weatherCloudy;
  //     return mainIcon!;
  //   } else {
  //     mainIcon = MdiIcons.weatherFog;
  //     return mainIcon!;
  //   }
  // }
}
