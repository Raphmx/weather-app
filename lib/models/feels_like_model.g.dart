// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feels_like_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_FeelsLikeModel _$$_FeelsLikeModelFromJson(Map<String, dynamic> json) =>
    _$_FeelsLikeModel(
      day: (json['day'] as num?)?.toDouble(),
      night: (json['night'] as num?)?.toDouble(),
      eve: (json['eve'] as num?)?.toDouble(),
      morn: (json['morn'] as num?)?.toDouble(),
    );

// ignore: non_constant_identifier_names
Map<String, dynamic> _$$_FeelsLikeModelToJson(_$_FeelsLikeModel instance) =>
    <String, dynamic>{
      'day': instance.day,
      'night': instance.night,
      'eve': instance.eve,
      'morn': instance.morn,
    };
