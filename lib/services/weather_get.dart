import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:wheather_app/models/weather_data_model.dart';
import 'package:wheather_app/services/weather_api_service.dart';
import 'package:wheather_app/services/weather_determine.dart';

class WeatherGet {
  WeatherDetermine weatherDetermine = WeatherDetermine();
  WeatherApi weatherApi = WeatherApi();
  String cityName = "City";
  late WeatherData weatherData;
  String? weatherImage;

  Future<void> getWeather() async {
    Position position = await weatherDetermine.determinePosition();
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
    } else {
      weatherImage = 'assets/images/cloudy.jpg';
    }
  }
}
