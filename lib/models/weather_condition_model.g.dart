// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_condition_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_WeatherConditionModel _$$_WeatherConditionModelFromJson(
        Map<String, dynamic> json) =>
    _$_WeatherConditionModel(
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
      currently: json['current'] == null
          ? null
          : CurrentlyModel.fromJson(json['current'] as Map<String, dynamic>),
      hourly: (json['hourly'] as List<dynamic>?)
          ?.map((e) => CurrentlyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      daily: (json['daily'] as List<dynamic>?)
          ?.map((e) => DailyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

// ignore: non_constant_identifier_names
Map<String, dynamic> _$$_WeatherConditionModelToJson(
        _$_WeatherConditionModel instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'current': instance.currently,
      'hourly': instance.hourly,
      'daily': instance.daily,
    };
