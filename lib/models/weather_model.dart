import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    final int? id,
    final String? main,
    final String? description,
    final String? icon,
  }) = _WeatherModel;

  // String get iconUrl {
  //   return "http://openweathermap.org/img/wn/$icon@2x.png";
  // }

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);
}
