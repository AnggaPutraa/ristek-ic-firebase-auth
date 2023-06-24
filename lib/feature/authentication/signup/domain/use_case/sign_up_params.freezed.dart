// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignUpParams _$SignUpParamsFromJson(Map<String, dynamic> json) {
  return _SignUpParams.fromJson(json);
}

/// @nodoc
mixin _$SignUpParams {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpParamsCopyWith<SignUpParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpParamsCopyWith<$Res> {
  factory $SignUpParamsCopyWith(
          SignUpParams value, $Res Function(SignUpParams) then) =
      _$SignUpParamsCopyWithImpl<$Res, SignUpParams>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$SignUpParamsCopyWithImpl<$Res, $Val extends SignUpParams>
    implements $SignUpParamsCopyWith<$Res> {
  _$SignUpParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignUpParamsCopyWith<$Res>
    implements $SignUpParamsCopyWith<$Res> {
  factory _$$_SignUpParamsCopyWith(
          _$_SignUpParams value, $Res Function(_$_SignUpParams) then) =
      __$$_SignUpParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_SignUpParamsCopyWithImpl<$Res>
    extends _$SignUpParamsCopyWithImpl<$Res, _$_SignUpParams>
    implements _$$_SignUpParamsCopyWith<$Res> {
  __$$_SignUpParamsCopyWithImpl(
      _$_SignUpParams _value, $Res Function(_$_SignUpParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_SignUpParams(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignUpParams implements _SignUpParams {
  _$_SignUpParams({required this.email, required this.password});

  factory _$_SignUpParams.fromJson(Map<String, dynamic> json) =>
      _$$_SignUpParamsFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignUpParams(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpParams &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpParamsCopyWith<_$_SignUpParams> get copyWith =>
      __$$_SignUpParamsCopyWithImpl<_$_SignUpParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignUpParamsToJson(
      this,
    );
  }
}

abstract class _SignUpParams implements SignUpParams {
  factory _SignUpParams(
      {required final String email,
      required final String password}) = _$_SignUpParams;

  factory _SignUpParams.fromJson(Map<String, dynamic> json) =
      _$_SignUpParams.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpParamsCopyWith<_$_SignUpParams> get copyWith =>
      throw _privateConstructorUsedError;
}
