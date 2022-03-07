class WeatherData {
  final double lat;
  final double lon;
  final num temp;
  final num feelsLike;
  final int humidity;
  final num windSpeed;
  final String main;
  final String icon;

  String get iconUrl {
    return "http://openweathermap.org/img/wn/$icon@2x.png";
  }

  WeatherData(
      {required this.lat,
      required this.lon,
      required this.temp,
      required this.feelsLike,
      required this.humidity,
      required this.windSpeed,
      required this.main,
      required this.icon});

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
        lat: json["lat"],
        lon: json["lon"],
        temp: json["current"]["temp"],
        feelsLike: json["current"]["feels_like"],
        humidity: json["current"]["humidity"],
        windSpeed: json["current"]["wind_speed"],
        main: json["current"]["weather"][0]["main"],
        icon: json["current"]["weather"][0]["icon"]);
  }
}
