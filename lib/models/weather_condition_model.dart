import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wheather_app/models/currently_model.dart';
import 'package:wheather_app/models/daily_model.dart';

part 'weather_condition_model.freezed.dart';
part 'weather_condition_model.g.dart';

@freezed
class WeatherConditionModel with _$WeatherConditionModel {
  const factory WeatherConditionModel({
    final double? lat,
    final double? lon,
    final CurrentlyModel? current,
    final List<CurrentlyModel>? hourly,
    final List<DailyModel>? daily,
  }) = _WeatherConditionModel;

  factory WeatherConditionModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherConditionModelFromJson(json);
}
