import 'package:freezed_annotation/freezed_annotation.dart';

part 'temp_model.freezed.dart';
part 'temp_model.g.dart';

@freezed
class TempModel with _$TempModel {
  const factory TempModel({
    final double? day,
    final double? min,
    final double? max,
    final double? night,
    final double? eve,
    final double? morn,
  }) = _TempModel;

  factory TempModel.fromJson(Map<String, dynamic> json) =>
      _$TempModelFromJson(json);
}
