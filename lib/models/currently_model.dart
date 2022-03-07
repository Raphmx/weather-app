import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wheather_app/models/weather_model.dart';

part 'currently_model.freezed.dart';
part 'currently_model.g.dart';

@freezed
class CurrentlyModel with _$CurrentlyModel {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CurrentlyModel({
    int? dt,
    double? temp,
    double? feelsLike,
    int? humidity,
    double? windSpeed,
    List<WeatherModel>? weather,
  }) = _CurrentlyModel;

  factory CurrentlyModel.fromJson(Map<String, dynamic> json) =>
      _$CurrentlyModelFromJson(json);
}
