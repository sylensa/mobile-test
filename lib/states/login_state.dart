import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(false) bool loading,
    @Default(false) bool success,
    String? error,
    @Default(false) bool isPasswordVisible,
  }) = _LoginState;

  const LoginState._();

  factory LoginState.initial() => const LoginState();
}
