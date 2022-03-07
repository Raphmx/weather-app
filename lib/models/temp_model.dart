import 'package:freezed_annotation/freezed_annotation.dart';
part 'temp_model.freezed.dart';
part 'temp_model.g.dart';

@freezed
class TempModel with _$TempModel {
  const factory TempModel({
    double? day,
    double? min,
    double? max,
    double? night,
    double? eve,
    double? morn,
  }) = _TempModel;

  factory TempModel.fromJson(Map<String, dynamic> json) =>
      _$TempModelFromJson(json);
}
