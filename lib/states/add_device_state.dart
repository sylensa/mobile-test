import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_device_state.freezed.dart';

@freezed
class AddDeviceState with _$AddDeviceState {
  const factory AddDeviceState({
    @Default(false) bool loading,
    @Default(false) bool success,
    String? error,
  }) = _AddDeviceState;

  const AddDeviceState._();

  factory AddDeviceState.initial() => const AddDeviceState();

  factory AddDeviceState.loading() => const AddDeviceState(loading: true);
  factory AddDeviceState.success() => const AddDeviceState(success: true);

  factory AddDeviceState.error(String message) =>
      AddDeviceState(error: message);
}
