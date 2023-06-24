import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_params.freezed.dart';
part 'sign_up_params.g.dart';

@freezed
class SignUpParams with _$SignUpParams {
  factory SignUpParams({
    required String email,
    required String password,
  }) = _SignUpParams;

  factory SignUpParams.fromJson(Map<String, dynamic> json) =>
      _$SignUpParamsFromJson(json);
}
