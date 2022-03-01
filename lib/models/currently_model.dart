import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wheather_app/models/weather_model.dart';

part 'currently_model.freezed.dart';
part 'currently_model.g.dart';

@freezed
class CurrentlyModel with _$CurrentlyModel {
  const factory CurrentlyModel({
    final int? dt,
    final double? temp,
    final double? feelsLike,
    final int? humidity,
    final double? windSpeed,
    final List<WeatherModel>? weather,
  }) = _CurrentlyModel;

  factory CurrentlyModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentlyModelFromJson(json);
}
