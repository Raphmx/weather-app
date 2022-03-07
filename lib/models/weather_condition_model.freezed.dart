// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_condition_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherConditionModel _$WeatherConditionModelFromJson(
    Map<String, dynamic> json) {
  return _WeatherConditionModel.fromJson(json);
}

/// @nodoc
class _$WeatherConditionModelTearOff {
  const _$WeatherConditionModelTearOff();

  _WeatherConditionModel call(
      {double? lat,
      double? lon,
      @JsonKey(name: 'current') CurrentlyModel? currently,
      List<CurrentlyModel>? hourly,
      List<DailyModel>? daily}) {
    return _WeatherConditionModel(
      lat: lat,
      lon: lon,
      currently: currently,
      hourly: hourly,
      daily: daily,
    );
  }

  WeatherConditionModel fromJson(Map<String, Object?> json) {
    return WeatherConditionModel.fromJson(json);
  }
}

/// @nodoc
const $WeatherConditionModel = _$WeatherConditionModelTearOff();

/// @nodoc
mixin _$WeatherConditionModel {
  double? get lat => throw _privateConstructorUsedError;
  double? get lon => throw _privateConstructorUsedError;
  @JsonKey(name: 'current')
  CurrentlyModel? get currently => throw _privateConstructorUsedError;
  List<CurrentlyModel>? get hourly => throw _privateConstructorUsedError;
  List<DailyModel>? get daily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherConditionModelCopyWith<WeatherConditionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherConditionModelCopyWith<$Res> {
  factory $WeatherConditionModelCopyWith(WeatherConditionModel value,
          $Res Function(WeatherConditionModel) then) =
      _$WeatherConditionModelCopyWithImpl<$Res>;
  $Res call(
      {double? lat,
      double? lon,
      @JsonKey(name: 'current') CurrentlyModel? currently,
      List<CurrentlyModel>? hourly,
      List<DailyModel>? daily});

  $CurrentlyModelCopyWith<$Res>? get currently;
}

/// @nodoc
class _$WeatherConditionModelCopyWithImpl<$Res>
    implements $WeatherConditionModelCopyWith<$Res> {
  _$WeatherConditionModelCopyWithImpl(this._value, this._then);

  final WeatherConditionModel _value;
  // ignore: unused_field
  final $Res Function(WeatherConditionModel) _then;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? currently = freezed,
    Object? hourly = freezed,
    Object? daily = freezed,
  }) {
    return _then(_value.copyWith(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      currently: currently == freezed
          ? _value.currently
          : currently // ignore: cast_nullable_to_non_nullable
              as CurrentlyModel?,
      hourly: hourly == freezed
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<CurrentlyModel>?,
      daily: daily == freezed
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<DailyModel>?,
    ));
  }

  @override
  $CurrentlyModelCopyWith<$Res>? get currently {
    if (_value.currently == null) {
      return null;
    }

    return $CurrentlyModelCopyWith<$Res>(_value.currently!, (value) {
      return _then(_value.copyWith(currently: value));
    });
  }
}

/// @nodoc
abstract class _$WeatherConditionModelCopyWith<$Res>
    implements $WeatherConditionModelCopyWith<$Res> {
  factory _$WeatherConditionModelCopyWith(_WeatherConditionModel value,
          $Res Function(_WeatherConditionModel) then) =
      __$WeatherConditionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {double? lat,
      double? lon,
      @JsonKey(name: 'current') CurrentlyModel? currently,
      List<CurrentlyModel>? hourly,
      List<DailyModel>? daily});

  @override
  $CurrentlyModelCopyWith<$Res>? get currently;
}

/// @nodoc
class __$WeatherConditionModelCopyWithImpl<$Res>
    extends _$WeatherConditionModelCopyWithImpl<$Res>
    implements _$WeatherConditionModelCopyWith<$Res> {
  __$WeatherConditionModelCopyWithImpl(_WeatherConditionModel _value,
      $Res Function(_WeatherConditionModel) _then)
      : super(_value, (v) => _then(v as _WeatherConditionModel));

  @override
  _WeatherConditionModel get _value => super._value as _WeatherConditionModel;

  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
    Object? currently = freezed,
    Object? hourly = freezed,
    Object? daily = freezed,
  }) {
    return _then(_WeatherConditionModel(
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      currently: currently == freezed
          ? _value.currently
          : currently // ignore: cast_nullable_to_non_nullable
              as CurrentlyModel?,
      hourly: hourly == freezed
          ? _value.hourly
          : hourly // ignore: cast_nullable_to_non_nullable
              as List<CurrentlyModel>?,
      daily: daily == freezed
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<DailyModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherConditionModel implements _WeatherConditionModel {
  const _$_WeatherConditionModel(
      {this.lat,
      this.lon,
      @JsonKey(name: 'current') this.currently,
      this.hourly,
      this.daily});

  factory _$_WeatherConditionModel.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherConditionModelFromJson(json);

  @override
  final double? lat;
  @override
  final double? lon;
  @override
  @JsonKey(name: 'current')
  final CurrentlyModel? currently;
  @override
  final List<CurrentlyModel>? hourly;
  @override
  final List<DailyModel>? daily;

  @override
  String toString() {
    return 'WeatherConditionModel(lat: $lat, lon: $lon, currently: $currently, hourly: $hourly, daily: $daily)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherConditionModel &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lon, lon) &&
            const DeepCollectionEquality().equals(other.currently, currently) &&
            const DeepCollectionEquality().equals(other.hourly, hourly) &&
            const DeepCollectionEquality().equals(other.daily, daily));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lat),
      const DeepCollectionEquality().hash(lon),
      const DeepCollectionEquality().hash(currently),
      const DeepCollectionEquality().hash(hourly),
      const DeepCollectionEquality().hash(daily));

  @JsonKey(ignore: true)
  @override
  _$WeatherConditionModelCopyWith<_WeatherConditionModel> get copyWith =>
      __$WeatherConditionModelCopyWithImpl<_WeatherConditionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherConditionModelToJson(this);
  }
}

abstract class _WeatherConditionModel implements WeatherConditionModel {
  const factory _WeatherConditionModel(
      {double? lat,
      double? lon,
      @JsonKey(name: 'current') CurrentlyModel? currently,
      List<CurrentlyModel>? hourly,
      List<DailyModel>? daily}) = _$_WeatherConditionModel;

  factory _WeatherConditionModel.fromJson(Map<String, dynamic> json) =
      _$_WeatherConditionModel.fromJson;

  @override
  double? get lat;
  @override
  double? get lon;
  @override
  @JsonKey(name: 'current')
  CurrentlyModel? get currently;
  @override
  List<CurrentlyModel>? get hourly;
  @override
  List<DailyModel>? get daily;
  @override
  @JsonKey(ignore: true)
  _$WeatherConditionModelCopyWith<_WeatherConditionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
