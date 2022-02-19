class WheatherData {
  final double lat;
  final double lon;
  final double temp;
  final double feelsLike;
  final int humidity;
  final double windSpeed;
  // final String description;

  WheatherData({
    required this.lat,
    required this.lon,
    required this.temp,
    required this.feelsLike,
    required this.humidity,
    required this.windSpeed,
  });

  factory WheatherData.fromJson(Map<String, dynamic> json) {
    return WheatherData(
        lat: json["lat"],
        lon: json["lon"],
        temp: json["current"]["temp"],
        feelsLike: json["current"]["feels_like"],
        humidity: json["current"]["humidity"],
        windSpeed: json["current"]["wind_speed"]);
  }
}
