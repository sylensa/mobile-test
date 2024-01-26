import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_program_state_payload.freezed.dart';
part 'change_program_state_payload.g.dart';

@freezed
class ChangeProgramStatePayload with _$ChangeProgramStatePayload {
  const factory ChangeProgramStatePayload({
    required String programId,
    required String deviceUuid,
    required String cropUnitId,
    @JsonKey(includeIfNull: false) int? state,
    @JsonKey(includeIfNull: false) int? skipShiftWithId,
  }) = _ChangeProgramStatePayload;

  factory ChangeProgramStatePayload.fromJson(Map<String, dynamic> json) =>
      _$ChangeProgramStatePayloadFromJson(json);
}