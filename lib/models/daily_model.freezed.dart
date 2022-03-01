// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'daily_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DailyModel _$DailyModelFromJson(Map<String, dynamic> json) {
  return _DailyModel.fromJson(json);
}

/// @nodoc
class _$DailyModelTearOff {
  const _$DailyModelTearOff();

  _DailyModel call(
      {int? dt,
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
      double? uvi}) {
    return _DailyModel(
      dt: dt,
      sunrise: sunrise,
      sunset: sunset,
      moonrise: moonrise,
      moonset: moonset,
      moonPhase: moonPhase,
      temp: temp,
      feelsLike: feelsLike,
      pressure: pressure,
      humidity: humidity,
      dewPoint: dewPoint,
      windSpeed: windSpeed,
      windDeg: windDeg,
      windGust: windGust,
      weather: weather,
      clouds: clouds,
      pop: pop,
      rain: rain,
      uvi: uvi,
    );
  }

  DailyModel fromJson(Map<String, Object?> json) {
    return DailyModel.fromJson(json);
  }
}

/// @nodoc
const $DailyModel = _$DailyModelTearOff();

/// @nodoc
mixin _$DailyModel {
  int? get dt => throw _privateConstructorUsedError;
  int? get sunrise => throw _privateConstructorUsedError;
  int? get sunset => throw _privateConstructorUsedError;
  int? get moonrise => throw _privateConstructorUsedError;
  int? get moonset => throw _privateConstructorUsedError;
  double? get moonPhase => throw _privateConstructorUsedError;
  TempModel? get temp => throw _privateConstructorUsedError;
  FeelsLikeModel? get feelsLike => throw _privateConstructorUsedError;
  int? get pressure => throw _privateConstructorUsedError;
  int? get humidity => throw _privateConstructorUsedError;
  double? get dewPoint => throw _privateConstructorUsedError;
  double? get windSpeed => throw _privateConstructorUsedError;
  int? get windDeg => throw _privateConstructorUsedError;
  double? get windGust => throw _privateConstructorUsedError;
  List<WeatherModel>? get weather => throw _privateConstructorUsedError;
  int? get clouds => throw _privateConstructorUsedError;
  double? get pop => throw _privateConstructorUsedError;
  double? get rain => throw _privateConstructorUsedError;
  double? get uvi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyModelCopyWith<DailyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyModelCopyWith<$Res> {
  factory $DailyModelCopyWith(
          DailyModel value, $Res Function(DailyModel) then) =
      _$DailyModelCopyWithImpl<$Res>;
  $Res call(
      {int? dt,
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
      double? uvi});

  $TempModelCopyWith<$Res>? get temp;
  $FeelsLikeModelCopyWith<$Res>? get feelsLike;
}

/// @nodoc
class _$DailyModelCopyWithImpl<$Res> implements $DailyModelCopyWith<$Res> {
  _$DailyModelCopyWithImpl(this._value, this._then);

  final DailyModel _value;
  // ignore: unused_field
  final $Res Function(DailyModel) _then;

  @override
  $Res call({
    Object? dt = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? moonrise = freezed,
    Object? moonset = freezed,
    Object? moonPhase = freezed,
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? dewPoint = freezed,
    Object? windSpeed = freezed,
    Object? windDeg = freezed,
    Object? windGust = freezed,
    Object? weather = freezed,
    Object? clouds = freezed,
    Object? pop = freezed,
    Object? rain = freezed,
    Object? uvi = freezed,
  }) {
    return _then(_value.copyWith(
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      sunrise: sunrise == freezed
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: sunset == freezed
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
      moonrise: moonrise == freezed
          ? _value.moonrise
          : moonrise // ignore: cast_nullable_to_non_nullable
              as int?,
      moonset: moonset == freezed
          ? _value.moonset
          : moonset // ignore: cast_nullable_to_non_nullable
              as int?,
      moonPhase: moonPhase == freezed
          ? _value.moonPhase
          : moonPhase // ignore: cast_nullable_to_non_nullable
              as double?,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as TempModel?,
      feelsLike: feelsLike == freezed
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as FeelsLikeModel?,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      dewPoint: dewPoint == freezed
          ? _value.dewPoint
          : dewPoint // ignore: cast_nullable_to_non_nullable
              as double?,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      windDeg: windDeg == freezed
          ? _value.windDeg
          : windDeg // ignore: cast_nullable_to_non_nullable
              as int?,
      windGust: windGust == freezed
          ? _value.windGust
          : windGust // ignore: cast_nullable_to_non_nullable
              as double?,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherModel>?,
      clouds: clouds == freezed
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int?,
      pop: pop == freezed
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double?,
      rain: rain == freezed
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as double?,
      uvi: uvi == freezed
          ? _value.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  @override
  $TempModelCopyWith<$Res>? get temp {
    if (_value.temp == null) {
      return null;
    }

    return $TempModelCopyWith<$Res>(_value.temp!, (value) {
      return _then(_value.copyWith(temp: value));
    });
  }

  @override
  $FeelsLikeModelCopyWith<$Res>? get feelsLike {
    if (_value.feelsLike == null) {
      return null;
    }

    return $FeelsLikeModelCopyWith<$Res>(_value.feelsLike!, (value) {
      return _then(_value.copyWith(feelsLike: value));
    });
  }
}

/// @nodoc
abstract class _$DailyModelCopyWith<$Res> implements $DailyModelCopyWith<$Res> {
  factory _$DailyModelCopyWith(
          _DailyModel value, $Res Function(_DailyModel) then) =
      __$DailyModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? dt,
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
      double? uvi});

  @override
  $TempModelCopyWith<$Res>? get temp;
  @override
  $FeelsLikeModelCopyWith<$Res>? get feelsLike;
}

/// @nodoc
class __$DailyModelCopyWithImpl<$Res> extends _$DailyModelCopyWithImpl<$Res>
    implements _$DailyModelCopyWith<$Res> {
  __$DailyModelCopyWithImpl(
      _DailyModel _value, $Res Function(_DailyModel) _then)
      : super(_value, (v) => _then(v as _DailyModel));

  @override
  _DailyModel get _value => super._value as _DailyModel;

  @override
  $Res call({
    Object? dt = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? moonrise = freezed,
    Object? moonset = freezed,
    Object? moonPhase = freezed,
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
    Object? dewPoint = freezed,
    Object? windSpeed = freezed,
    Object? windDeg = freezed,
    Object? windGust = freezed,
    Object? weather = freezed,
    Object? clouds = freezed,
    Object? pop = freezed,
    Object? rain = freezed,
    Object? uvi = freezed,
  }) {
    return _then(_DailyModel(
      dt: dt == freezed
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      sunrise: sunrise == freezed
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: sunset == freezed
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
      moonrise: moonrise == freezed
          ? _value.moonrise
          : moonrise // ignore: cast_nullable_to_non_nullable
              as int?,
      moonset: moonset == freezed
          ? _value.moonset
          : moonset // ignore: cast_nullable_to_non_nullable
              as int?,
      moonPhase: moonPhase == freezed
          ? _value.moonPhase
          : moonPhase // ignore: cast_nullable_to_non_nullable
              as double?,
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as TempModel?,
      feelsLike: feelsLike == freezed
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as FeelsLikeModel?,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      dewPoint: dewPoint == freezed
          ? _value.dewPoint
          : dewPoint // ignore: cast_nullable_to_non_nullable
              as double?,
      windSpeed: windSpeed == freezed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      windDeg: windDeg == freezed
          ? _value.windDeg
          : windDeg // ignore: cast_nullable_to_non_nullable
              as int?,
      windGust: windGust == freezed
          ? _value.windGust
          : windGust // ignore: cast_nullable_to_non_nullable
              as double?,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherModel>?,
      clouds: clouds == freezed
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as int?,
      pop: pop == freezed
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double?,
      rain: rain == freezed
          ? _value.rain
          : rain // ignore: cast_nullable_to_non_nullable
              as double?,
      uvi: uvi == freezed
          ? _value.uvi
          : uvi // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_DailyModel implements _DailyModel {
  const _$_DailyModel(
      {this.dt,
      this.sunrise,
      this.sunset,
      this.moonrise,
      this.moonset,
      this.moonPhase,
      this.temp,
      this.feelsLike,
      this.pressure,
      this.humidity,
      this.dewPoint,
      this.windSpeed,
      this.windDeg,
      this.windGust,
      this.weather,
      this.clouds,
      this.pop,
      this.rain,
      this.uvi});

  factory _$_DailyModel.fromJson(Map<String, dynamic> json) =>
      _$$_DailyModelFromJson(json);

  @override
  final int? dt;
  @override
  final int? sunrise;
  @override
  final int? sunset;
  @override
  final int? moonrise;
  @override
  final int? moonset;
  @override
  final double? moonPhase;
  @override
  final TempModel? temp;
  @override
  final FeelsLikeModel? feelsLike;
  @override
  final int? pressure;
  @override
  final int? humidity;
  @override
  final double? dewPoint;
  @override
  final double? windSpeed;
  @override
  final int? windDeg;
  @override
  final double? windGust;
  @override
  final List<WeatherModel>? weather;
  @override
  final int? clouds;
  @override
  final double? pop;
  @override
  final double? rain;
  @override
  final double? uvi;

  @override
  String toString() {
    return 'DailyModel(dt: $dt, sunrise: $sunrise, sunset: $sunset, moonrise: $moonrise, moonset: $moonset, moonPhase: $moonPhase, temp: $temp, feelsLike: $feelsLike, pressure: $pressure, humidity: $humidity, dewPoint: $dewPoint, windSpeed: $windSpeed, windDeg: $windDeg, windGust: $windGust, weather: $weather, clouds: $clouds, pop: $pop, rain: $rain, uvi: $uvi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DailyModel &&
            const DeepCollectionEquality().equals(other.dt, dt) &&
            const DeepCollectionEquality().equals(other.sunrise, sunrise) &&
            const DeepCollectionEquality().equals(other.sunset, sunset) &&
            const DeepCollectionEquality().equals(other.moonrise, moonrise) &&
            const DeepCollectionEquality().equals(other.moonset, moonset) &&
            const DeepCollectionEquality().equals(other.moonPhase, moonPhase) &&
            const DeepCollectionEquality().equals(other.temp, temp) &&
            const DeepCollectionEquality().equals(other.feelsLike, feelsLike) &&
            const DeepCollectionEquality().equals(other.pressure, pressure) &&
            const DeepCollectionEquality().equals(other.humidity, humidity) &&
            const DeepCollectionEquality().equals(other.dewPoint, dewPoint) &&
            const DeepCollectionEquality().equals(other.windSpeed, windSpeed) &&
            const DeepCollectionEquality().equals(other.windDeg, windDeg) &&
            const DeepCollectionEquality().equals(other.windGust, windGust) &&
            const DeepCollectionEquality().equals(other.weather, weather) &&
            const DeepCollectionEquality().equals(other.clouds, clouds) &&
            const DeepCollectionEquality().equals(other.pop, pop) &&
            const DeepCollectionEquality().equals(other.rain, rain) &&
            const DeepCollectionEquality().equals(other.uvi, uvi));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(dt),
        const DeepCollectionEquality().hash(sunrise),
        const DeepCollectionEquality().hash(sunset),
        const DeepCollectionEquality().hash(moonrise),
        const DeepCollectionEquality().hash(moonset),
        const DeepCollectionEquality().hash(moonPhase),
        const DeepCollectionEquality().hash(temp),
        const DeepCollectionEquality().hash(feelsLike),
        const DeepCollectionEquality().hash(pressure),
        const DeepCollectionEquality().hash(humidity),
        const DeepCollectionEquality().hash(dewPoint),
        const DeepCollectionEquality().hash(windSpeed),
        const DeepCollectionEquality().hash(windDeg),
        const DeepCollectionEquality().hash(windGust),
        const DeepCollectionEquality().hash(weather),
        const DeepCollectionEquality().hash(clouds),
        const DeepCollectionEquality().hash(pop),
        const DeepCollectionEquality().hash(rain),
        const DeepCollectionEquality().hash(uvi)
      ]);

  @JsonKey(ignore: true)
  @override
  _$DailyModelCopyWith<_DailyModel> get copyWith =>
      __$DailyModelCopyWithImpl<_DailyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DailyModelToJson(this);
  }
}

abstract class _DailyModel implements DailyModel {
  const factory _DailyModel(
      {int? dt,
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
      double? uvi}) = _$_DailyModel;

  factory _DailyModel.fromJson(Map<String, dynamic> json) =
      _$_DailyModel.fromJson;

  @override
  int? get dt;
  @override
  int? get sunrise;
  @override
  int? get sunset;
  @override
  int? get moonrise;
  @override
  int? get moonset;
  @override
  double? get moonPhase;
  @override
  TempModel? get temp;
  @override
  FeelsLikeModel? get feelsLike;
  @override
  int? get pressure;
  @override
  int? get humidity;
  @override
  double? get dewPoint;
  @override
  double? get windSpeed;
  @override
  int? get windDeg;
  @override
  double? get windGust;
  @override
  List<WeatherModel>? get weather;
  @override
  int? get clouds;
  @override
  double? get pop;
  @override
  double? get rain;
  @override
  double? get uvi;
  @override
  @JsonKey(ignore: true)
  _$DailyModelCopyWith<_DailyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
