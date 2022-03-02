import 'package:freezed_annotation/freezed_annotation.dart';

part 'feels_like_model.freezed.dart';
part 'feels_like_model.g.dart';

@freezed
class FeelsLikeModel with _$FeelsLikeModel {
  const factory FeelsLikeModel({
    double? day,
    double? night,
    double? eve,
    double? morn,
  }) = _FeelsLikeModel;

  factory FeelsLikeModel.fromJson(Map<String, dynamic> json) =>
      _$FeelsLikeModelFromJson(json);
}
