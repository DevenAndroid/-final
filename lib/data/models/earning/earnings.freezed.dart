// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'earnings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EarningModel _$EarningModelFromJson(Map<String, dynamic> json) {
  return _EarningModel.fromJson(json);
}

/// @nodoc
class _$EarningModelTearOff {
  const _$EarningModelTearOff();

  _EarningModel call(
      {String? status,
      String? message,
      double? earnings,
      double? withdrawal,
      String? refund}) {
    return _EarningModel(
      status: status,
      message: message,
      earnings: earnings,
      withdrawal: withdrawal,
      refund: refund,
    );
  }

  EarningModel fromJson(Map<String, Object?> json) {
    return EarningModel.fromJson(json);
  }
}

/// @nodoc
const $EarningModel = _$EarningModelTearOff();

/// @nodoc
mixin _$EarningModel {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  double? get earnings => throw _privateConstructorUsedError;
  double? get withdrawal => throw _privateConstructorUsedError;
  String? get refund => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EarningModelCopyWith<EarningModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningModelCopyWith<$Res> {
  factory $EarningModelCopyWith(
          EarningModel value, $Res Function(EarningModel) then) =
      _$EarningModelCopyWithImpl<$Res>;
  $Res call(
      {String? status,
      String? message,
      double? earnings,
      double? withdrawal,
      String? refund});
}

/// @nodoc
class _$EarningModelCopyWithImpl<$Res> implements $EarningModelCopyWith<$Res> {
  _$EarningModelCopyWithImpl(this._value, this._then);

  final EarningModel _value;
  // ignore: unused_field
  final $Res Function(EarningModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? earnings = freezed,
    Object? withdrawal = freezed,
    Object? refund = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      earnings: earnings == freezed
          ? _value.earnings
          : earnings // ignore: cast_nullable_to_non_nullable
              as double?,
      withdrawal: withdrawal == freezed
          ? _value.withdrawal
          : withdrawal // ignore: cast_nullable_to_non_nullable
              as double?,
      refund: refund == freezed
          ? _value.refund
          : refund // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$EarningModelCopyWith<$Res>
    implements $EarningModelCopyWith<$Res> {
  factory _$EarningModelCopyWith(
          _EarningModel value, $Res Function(_EarningModel) then) =
      __$EarningModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? status,
      String? message,
      double? earnings,
      double? withdrawal,
      String? refund});
}

/// @nodoc
class __$EarningModelCopyWithImpl<$Res> extends _$EarningModelCopyWithImpl<$Res>
    implements _$EarningModelCopyWith<$Res> {
  __$EarningModelCopyWithImpl(
      _EarningModel _value, $Res Function(_EarningModel) _then)
      : super(_value, (v) => _then(v as _EarningModel));

  @override
  _EarningModel get _value => super._value as _EarningModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? earnings = freezed,
    Object? withdrawal = freezed,
    Object? refund = freezed,
  }) {
    return _then(_EarningModel(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      earnings: earnings == freezed
          ? _value.earnings
          : earnings // ignore: cast_nullable_to_non_nullable
              as double?,
      withdrawal: withdrawal == freezed
          ? _value.withdrawal
          : withdrawal // ignore: cast_nullable_to_non_nullable
              as double?,
      refund: refund == freezed
          ? _value.refund
          : refund // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EarningModel implements _EarningModel {
  const _$_EarningModel(
      {this.status, this.message, this.earnings, this.withdrawal, this.refund});

  factory _$_EarningModel.fromJson(Map<String, dynamic> json) =>
      _$$_EarningModelFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  @override
  final double? earnings;
  @override
  final double? withdrawal;
  @override
  final String? refund;

  @override
  String toString() {
    return 'EarningModel(status: $status, message: $message, earnings: $earnings, withdrawal: $withdrawal, refund: $refund)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EarningModel &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.earnings, earnings) &&
            const DeepCollectionEquality()
                .equals(other.withdrawal, withdrawal) &&
            const DeepCollectionEquality().equals(other.refund, refund));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(earnings),
      const DeepCollectionEquality().hash(withdrawal),
      const DeepCollectionEquality().hash(refund));

  @JsonKey(ignore: true)
  @override
  _$EarningModelCopyWith<_EarningModel> get copyWith =>
      __$EarningModelCopyWithImpl<_EarningModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EarningModelToJson(this);
  }
}

abstract class _EarningModel implements EarningModel {
  const factory _EarningModel(
      {String? status,
      String? message,
      double? earnings,
      double? withdrawal,
      String? refund}) = _$_EarningModel;

  factory _EarningModel.fromJson(Map<String, dynamic> json) =
      _$_EarningModel.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  double? get earnings;
  @override
  double? get withdrawal;
  @override
  String? get refund;
  @override
  @JsonKey(ignore: true)
  _$EarningModelCopyWith<_EarningModel> get copyWith =>
      throw _privateConstructorUsedError;
}
