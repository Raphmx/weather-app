import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:wheather_app/wheather_data_model.dart';

class WheatherApi {
  Future<WheatherData> getCurrentWheather(double lat, double long) async {
    var url = Uri.parse(
        "https://api.openweathermap.org/data/2.5/onecall?lat=$lat&lon=$long&exclude=daily&units=metric&appid=90c8b4d4d3eba7a31b34a1c1a240d4b7");

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);

      return WheatherData.fromJson(body);
    } else {
      throw "can't";
    }
  }
}
