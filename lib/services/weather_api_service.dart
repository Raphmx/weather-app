import 'dart:convert';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:wheather_app/models/weather_condition_model.dart';
import 'package:wheather_app/services/location_service.dart';

final weatherService = Provider(
  (ref) => WeatherApi(ref),
);

class WeatherApi {
  final ProviderRef ref;

  late final LocationService _location;

  WeatherApi(this.ref) {
    _location = ref.watch(locationService);
  }

  Future<WeatherConditionModel> getCurrentWheather() async {
    final location = await _location.getLocation();

    var url = Uri.parse(
        "https://api.openweathermap.org/data/2.5/onecall?lat=${location.lat}&lon=${location.long}&appid");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      return WeatherConditionModel.fromJson(body);
    } else {
      throw "can't";
    }
  }
}
