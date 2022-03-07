// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'temp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TempModel _$TempModelFromJson(Map<String, dynamic> json) {
  return _TempModel.fromJson(json);
}

/// @nodoc
class _$TempModelTearOff {
  const _$TempModelTearOff();

  _TempModel call(
      {double? day,
      double? min,
      double? max,
      double? night,
      double? eve,
      double? morn}) {
    return _TempModel(
      day: day,
      min: min,
      max: max,
      night: night,
      eve: eve,
      morn: morn,
    );
  }

  TempModel fromJson(Map<String, Object?> json) {
    return TempModel.fromJson(json);
  }
}

/// @nodoc
const $TempModel = _$TempModelTearOff();

/// @nodoc
mixin _$TempModel {
  double? get day => throw _privateConstructorUsedError;
  double? get min => throw _privateConstructorUsedError;
  double? get max => throw _privateConstructorUsedError;
  double? get night => throw _privateConstructorUsedError;
  double? get eve => throw _privateConstructorUsedError;
  double? get morn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TempModelCopyWith<TempModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempModelCopyWith<$Res> {
  factory $TempModelCopyWith(TempModel value, $Res Function(TempModel) then) =
      _$TempModelCopyWithImpl<$Res>;
  $Res call(
      {double? day,
      double? min,
      double? max,
      double? night,
      double? eve,
      double? morn});
}

/// @nodoc
class _$TempModelCopyWithImpl<$Res> implements $TempModelCopyWith<$Res> {
  _$TempModelCopyWithImpl(this._value, this._then);

  final TempModel _value;
  // ignore: unused_field
  final $Res Function(TempModel) _then;

  @override
  $Res call({
    Object? day = freezed,
    Object? min = freezed,
    Object? max = freezed,
    Object? night = freezed,
    Object? eve = freezed,
    Object? morn = freezed,
  }) {
    return _then(_value.copyWith(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double?,
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double?,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
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
abstract class _$TempModelCopyWith<$Res> implements $TempModelCopyWith<$Res> {
  factory _$TempModelCopyWith(
          _TempModel value, $Res Function(_TempModel) then) =
      __$TempModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {double? day,
      double? min,
      double? max,
      double? night,
      double? eve,
      double? morn});
}

/// @nodoc
class __$TempModelCopyWithImpl<$Res> extends _$TempModelCopyWithImpl<$Res>
    implements _$TempModelCopyWith<$Res> {
  __$TempModelCopyWithImpl(_TempModel _value, $Res Function(_TempModel) _then)
      : super(_value, (v) => _then(v as _TempModel));

  @override
  _TempModel get _value => super._value as _TempModel;

  @override
  $Res call({
    Object? day = freezed,
    Object? min = freezed,
    Object? max = freezed,
    Object? night = freezed,
    Object? eve = freezed,
    Object? morn = freezed,
  }) {
    return _then(_TempModel(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double?,
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double?,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
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
class _$_TempModel implements _TempModel {
  const _$_TempModel(
      {this.day, this.min, this.max, this.night, this.eve, this.morn});

  factory _$_TempModel.fromJson(Map<String, dynamic> json) =>
      _$$_TempModelFromJson(json);

  @override
  final double? day;
  @override
  final double? min;
  @override
  final double? max;
  @override
  final double? night;
  @override
  final double? eve;
  @override
  final double? morn;

  @override
  String toString() {
    return 'TempModel(day: $day, min: $min, max: $max, night: $night, eve: $eve, morn: $morn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TempModel &&
            const DeepCollectionEquality().equals(other.day, day) &&
            const DeepCollectionEquality().equals(other.min, min) &&
            const DeepCollectionEquality().equals(other.max, max) &&
            const DeepCollectionEquality().equals(other.night, night) &&
            const DeepCollectionEquality().equals(other.eve, eve) &&
            const DeepCollectionEquality().equals(other.morn, morn));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(day),
      const DeepCollectionEquality().hash(min),
      const DeepCollectionEquality().hash(max),
      const DeepCollectionEquality().hash(night),
      const DeepCollectionEquality().hash(eve),
      const DeepCollectionEquality().hash(morn));

  @JsonKey(ignore: true)
  @override
  _$TempModelCopyWith<_TempModel> get copyWith =>
      __$TempModelCopyWithImpl<_TempModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TempModelToJson(this);
  }
}

abstract class _TempModel implements TempModel {
  const factory _TempModel(
      {double? day,
      double? min,
      double? max,
      double? night,
      double? eve,
      double? morn}) = _$_TempModel;

  factory _TempModel.fromJson(Map<String, dynamic> json) =
      _$_TempModel.fromJson;

  @override
  double? get day;
  @override
  double? get min;
  @override
  double? get max;
  @override
  double? get night;
  @override
  double? get eve;
  @override
  double? get morn;
  @override
  @JsonKey(ignore: true)
  _$TempModelCopyWith<_TempModel> get copyWith =>
      throw _privateConstructorUsedError;
}
