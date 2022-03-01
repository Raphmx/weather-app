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
    final int? dt,
    final int? sunrise,
    final int? sunset,
    final int? moonrise,
    final int? moonset,
    final double? moonPhase,
    final TempModel? temp,
    final FeelsLikeModel? feelsLike,
    final int? pressure,
    final int? humidity,
    final double? dewPoint,
    final double? windSpeed,
    final int? windDeg,
    final double? windGust,
    final List<WeatherModel>? weather,
    final int? clouds,
    final double? pop,
    final double? rain,
    final double? uvi,
  }) = _DailyModel;

  factory DailyModel.fromJson(Map<String, dynamic> json) =>
      _$DailyModelFromJson(json);
}
