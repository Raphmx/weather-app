// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wheather_app/models/feels_like_model.dart';
import 'package:wheather_app/models/temp_model.dart';
import 'package:wheather_app/models/weather_model.dart';

part 'daily_model.freezed.dart';
part 'daily_model.g.dart';

@freezed
class DailyModel with _$DailyModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DailyModel({
    int? dt,
    int? sunrise,
    int? sunset,
    int? moonrise,
    int? moonset,
    double? moonPhase,
    TempModel? temp,
    FeelsLikeModel? feelsLike,
    int? pressure,
    int? humidity,
    double? dewPoint,
    double? windSpeed,
    int? windDeg,
    double? windGust,
    List<WeatherModel>? weather,
    int? clouds,
    double? pop,
    double? rain,
    double? uvi,
  }) = _DailyModel;

  factory DailyModel.fromJson(Map<String, dynamic> json) =>
      _$DailyModelFromJson(json);
}
