import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'submit_state.freezed.dart';

@freezed
class SubmitState with _$SubmitState {
  const factory SubmitState({
    @Default(false) bool loading,
    @Default(false) bool success,
    String? error,
  }) = _SubmitState;

  const SubmitState._();

  factory SubmitState.initial() => const SubmitState();

  factory SubmitState.loading() => const SubmitState(loading: true);
  factory SubmitState.success() => const SubmitState(success: true);

  factory SubmitState.error(String message) =>
      SubmitState(error: message);
}