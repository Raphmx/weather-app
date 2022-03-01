// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feels_like_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeelsLikeModel _$FeelsLikeModelFromJson(Map<String, dynamic> json) {
  return _FeelsLikeModel.fromJson(json);
}

/// @nodoc
class _$FeelsLikeModelTearOff {
  const _$FeelsLikeModelTearOff();

  _FeelsLikeModel call(
      {double? day, double? night, double? eve, double? morn}) {
    return _FeelsLikeModel(
      day: day,
      night: night,
      eve: eve,
      morn: morn,
    );
  }

  FeelsLikeModel fromJson(Map<String, Object?> json) {
    return FeelsLikeModel.fromJson(json);
  }
}

/// @nodoc
const $FeelsLikeModel = _$FeelsLikeModelTearOff();

/// @nodoc
mixin _$FeelsLikeModel {
  double? get day => throw _privateConstructorUsedError;
  double? get night => throw _privateConstructorUsedError;
  double? get eve => throw _privateConstructorUsedError;
  double? get morn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeelsLikeModelCopyWith<FeelsLikeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeelsLikeModelCopyWith<$Res> {
  factory $FeelsLikeModelCopyWith(
          FeelsLikeModel value, $Res Function(FeelsLikeModel) then) =
      _$FeelsLikeModelCopyWithImpl<$Res>;
  $Res call({double? day, double? night, double? eve, double? morn});
}

/// @nodoc
class _$FeelsLikeModelCopyWithImpl<$Res>
    implements $FeelsLikeModelCopyWith<$Res> {
  _$FeelsLikeModelCopyWithImpl(this._value, this._then);

  final FeelsLikeModel _value;
  // ignore: unused_field
  final $Res Function(FeelsLikeModel) _then;

  @override
  $Res call({
    Object? day = freezed,
    Object? night = freezed,
    Object? eve = freezed,
    Object? morn = freezed,
  }) {
    return _then(_value.copyWith(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double?,
      night: night == freezed
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double?,
      eve: eve == freezed
          ? _value.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double?,
      morn: morn == freezed
          ? _value.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$FeelsLikeModelCopyWith<$Res>
    implements $FeelsLikeModelCopyWith<$Res> {
  factory _$FeelsLikeModelCopyWith(
          _FeelsLikeModel value, $Res Function(_FeelsLikeModel) then) =
      __$FeelsLikeModelCopyWithImpl<$Res>;
  @override
  $Res call({double? day, double? night, double? eve, double? morn});
}

/// @nodoc
class __$FeelsLikeModelCopyWithImpl<$Res>
    extends _$FeelsLikeModelCopyWithImpl<$Res>
    implements _$FeelsLikeModelCopyWith<$Res> {
  __$FeelsLikeModelCopyWithImpl(
      _FeelsLikeModel _value, $Res Function(_FeelsLikeModel) _then)
      : super(_value, (v) => _then(v as _FeelsLikeModel));

  @override
  _FeelsLikeModel get _value => super._value as _FeelsLikeModel;

  @override
  $Res call({
    Object? day = freezed,
    Object? night = freezed,
    Object? eve = freezed,
    Object? morn = freezed,
  }) {
    return _then(_FeelsLikeModel(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double?,
      night: night == freezed
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double?,
      eve: eve == freezed
          ? _value.eve
          : eve // ignore: cast_nullable_to_non_nullable
              as double?,
      morn: morn == freezed
          ? _value.morn
          : morn // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeelsLikeModel implements _FeelsLikeModel {
  const _$_FeelsLikeModel({this.day, this.night, this.eve, this.morn});

  factory _$_FeelsLikeModel.fromJson(Map<String, dynamic> json) =>
      _$$_FeelsLikeModelFromJson(json);

  @override
  final double? day;
  @override
  final double? night;
  @override
  final double? eve;
  @override
  final double? morn;

  @override
  String toString() {
    return 'FeelsLikeModel(day: $day, night: $night, eve: $eve, morn: $morn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeelsLikeModel &&
            const DeepCollectionEquality().equals(other.day, day) &&
            const DeepCollectionEquality().equals(other.night, night) &&
            const DeepCollectionEquality().equals(other.eve, eve) &&
            const DeepCollectionEquality().equals(other.morn, morn));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(day),
      const DeepCollectionEquality().hash(night),
      const DeepCollectionEquality().hash(eve),
      const DeepCollectionEquality().hash(morn));

  @JsonKey(ignore: true)
  @override
  _$FeelsLikeModelCopyWith<_FeelsLikeModel> get copyWith =>
      __$FeelsLikeModelCopyWithImpl<_FeelsLikeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeelsLikeModelToJson(this);
  }
}

abstract class _FeelsLikeModel implements FeelsLikeModel {
  const factory _FeelsLikeModel(
      {double? day,
      double? night,
      double? eve,
      double? morn}) = _$_FeelsLikeModel;

  factory _FeelsLikeModel.fromJson(Map<String, dynamic> json) =
      _$_FeelsLikeModel.fromJson;

  @override
  double? get day;
  @override
  double? get night;
  @override
  double? get eve;
  @override
  double? get morn;
  @override
  @JsonKey(ignore: true)
  _$FeelsLikeModelCopyWith<_FeelsLikeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
