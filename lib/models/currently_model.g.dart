// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currently_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_CurrentlyModel _$$_CurrentlyModelFromJson(Map<String, dynamic> json) =>
    _$_CurrentlyModel(
      dt: json['dt'] as int?,
      temp: (json['temp'] as num?)?.toDouble(),
      feelsLike: (json['feels_like'] as num?)?.toDouble(),
      humidity: json['humidity'] as int?,
      windSpeed: (json['wind_speed'] as num?)?.toDouble(),
      weather: (json['weather'] as List<dynamic>?)
          ?.map((e) => WeatherModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

// ignore: non_constant_identifier_names
Map<String, dynamic> _$$_CurrentlyModelToJson(_$_CurrentlyModel instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'humidity': instance.humidity,
      'wind_speed': instance.windSpeed,
      'weather': instance.weather,
    };
