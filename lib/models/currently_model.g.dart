// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currently_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrentlyModel _$$_CurrentlyModelFromJson(Map<String, dynamic> json) =>
    _$_CurrentlyModel(
      dt: json['dt'] as int?,
      temp: (json['temp'] as num?)?.toDouble(),
      feelsLike: (json['feelsLike'] as num?)?.toDouble(),
      humidity: json['humidity'] as int?,
      windSpeed: (json['windSpeed'] as num?)?.toDouble(),
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => WeatherModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CurrentlyModelToJson(_$_CurrentlyModel instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'temp': instance.temp,
      'feelsLike': instance.feelsLike,
      'humidity': instance.humidity,
      'windSpeed': instance.windSpeed,
      'weather': instance.weather,
    };
