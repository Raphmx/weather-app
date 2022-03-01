// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'currently_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentlyModel _$CurrentlyModelFromJson(Map<String, dynamic> json) {
  return _CurrentlyModel.fromJson(json);
}

/// @nodoc
class _$CurrentlyModelTearOff {
  const _$CurrentlyModelTearOff();

  _CurrentlyModel call(
      {int? dt,
      double? temp,
      double? feelsLike,
      int? humidity,
      double? windSpeed,
      List<WeatherModel>? weather}) {
    return _CurrentlyModel(
      dt: dt,
      temp: temp,
      feelsLike: feelsLike,
      humidity: humidity,
      windSpeed: windSpeed,
      weather: weather,
    );
  }

  CurrentlyModel fromJson(Map<String, Object?> json) {
    return CurrentlyModel.fromJson(json);
  }
}

/// @nodoc
const $CurrentlyModel = _$CurrentlyModelTearOff();

/// @nodoc
mixin _$CurrentlyModel {
  int? get dt => throw _privateConstructorUsedError;
  double? get temp => throw _privateConstructorUsedError;
  double? get feelsLike => throw _privateConstructorUsedError;
  int? get humidity => throw _privateConstructorUsedError;
  double? get windSpeed => throw _privateConstructorUsedError;
  List<WeatherModel>? get weather => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentlyModelCopyWith<CurrentlyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentlyModelCopyWith<$Res> {
  factory $CurrentlyModelCopyWith(
          CurrentlyModel value, $Res Function(CurrentlyModel) then) =
      _$CurrentlyModelCopyWithImpl<$Res>;
  $Res call(
      {int? dt,
      double? temp,
      double? feelsLike,
      int? humidity,
      double? windSpeed,
      List<WeatherModel>? weather});
}

/// @nodoc
class _$CurrentlyModelCopyWithImpl<$Res>
    implements $CurrentlyModelCopyWith<$Res> {
  _$CurrentlyModelCopyWithImpl(this._value, this._then);

  final CurrentlyModel _value;
  // ignore: unused_field
  final $Res Function(CurrentlyModel) _then;

  @override
  $Res call({
    Object? dt = freezed,
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? humidity = freezed,
    Object? windSpeed = freezed,
    Object? weather = freezed,
  }) {
    return _then(_value.copyWith(
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feelsLike: feelsLike == freezed
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherModel>?,
    ));
  }
}

/// @nodoc
abstract class _$CurrentlyModelCopyWith<$Res>
    implements $CurrentlyModelCopyWith<$Res> {
  factory _$CurrentlyModelCopyWith(
          _CurrentlyModel value, $Res Function(_CurrentlyModel) then) =
      __$CurrentlyModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? dt,
      double? temp,
      double? feelsLike,
      int? humidity,
      double? windSpeed,
      List<WeatherModel>? weather});
}

/// @nodoc
class __$CurrentlyModelCopyWithImpl<$Res>
    extends _$CurrentlyModelCopyWithImpl<$Res>
    implements _$CurrentlyModelCopyWith<$Res> {
  __$CurrentlyModelCopyWithImpl(
      _CurrentlyModel _value, $Res Function(_CurrentlyModel) _then)
      : super(_value, (v) => _then(v as _CurrentlyModel));

  @override
  _CurrentlyModel get _value => super._value as _CurrentlyModel;

  @override
  $Res call({
    Object? dt = freezed,
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? humidity = freezed,
    Object? windSpeed = freezed,
    Object? weather = freezed,
  }) {
    return _then(_CurrentlyModel(
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feelsLike: feelsLike == freezed
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrentlyModel implements _CurrentlyModel {
  const _$_CurrentlyModel(
      {this.dt,
      this.temp,
      this.feelsLike,
      this.humidity,
      this.windSpeed,
      this.weather});

  factory _$_CurrentlyModel.fromJson(Map<String, dynamic> json) =>
      _$$_CurrentlyModelFromJson(json);

  @override
  final int? dt;
  @override
  final double? temp;
  @override
  final double? feelsLike;
  @override
  final int? humidity;
  @override
  final double? windSpeed;
  @override
  final List<WeatherModel>? weather;

  @override
  String toString() {
    return 'CurrentlyModel(dt: $dt, temp: $temp, feelsLike: $feelsLike, humidity: $humidity, windSpeed: $windSpeed, weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurrentlyModel &&
            const DeepCollectionEquality().equals(other.dt, dt) &&
            const DeepCollectionEquality().equals(other.temp, temp) &&
            const DeepCollectionEquality().equals(other.feelsLike, feelsLike) &&
            const DeepCollectionEquality().equals(other.humidity, humidity) &&
            const DeepCollectionEquality().equals(other.windSpeed, windSpeed) &&
            const DeepCollectionEquality().equals(other.weather, weather));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dt),
      const DeepCollectionEquality().hash(temp),
      const DeepCollectionEquality().hash(feelsLike),
      const DeepCollectionEquality().hash(humidity),
      const DeepCollectionEquality().hash(windSpeed),
      const DeepCollectionEquality().hash(weather));

  @JsonKey(ignore: true)
  @override
  _$CurrentlyModelCopyWith<_CurrentlyModel> get copyWith =>
      __$CurrentlyModelCopyWithImpl<_CurrentlyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrentlyModelToJson(this);
  }
}

abstract class _CurrentlyModel implements CurrentlyModel {
  const factory _CurrentlyModel(
      {int? dt,
      double? temp,
      double? feelsLike,
      int? humidity,
      double? windSpeed,
      List<WeatherModel>? weather}) = _$_CurrentlyModel;

  factory _CurrentlyModel.fromJson(Map<String, dynamic> json) =
      _$_CurrentlyModel.fromJson;

  @override
  int? get dt;
  @override
  double? get temp;
  @override
  double? get feelsLike;
  @override
  int? get humidity;
  @override
  double? get windSpeed;
  @override
  List<WeatherModel>? get weather;
  @override
  @JsonKey(ignore: true)
  _$CurrentlyModelCopyWith<_CurrentlyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
