import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wheather_app/models/currently_model.dart';
import 'package:wheather_app/models/daily_model.dart';

part 'weather_condition_model.freezed.dart';
part 'weather_condition_model.g.dart';

@freezed
class WeatherConditionModel with _$WeatherConditionModel {
  const factory WeatherConditionModel({
    double? lat,
    double? lon,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'current') CurrentlyModel? currently,
    List<CurrentlyModel>? hourly,
    List<DailyModel>? daily,
  }) = _WeatherConditionModel;

  factory WeatherConditionModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherConditionModelFromJson(json);
}
