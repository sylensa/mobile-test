import 'package:freezed_annotation/freezed_annotation.dart';

part 'calculated_data_payload.freezed.dart';

part 'calculated_data_payload.g.dart';

@freezed
class CalculatedDataPayload with _$CalculatedDataPayload {
  const factory CalculatedDataPayload({
    required String fromDate,
    required String toDate,
    required String ioId,
    required String farmId,
  }) = _CalculatedDataPayload;

  factory CalculatedDataPayload.fromJson(Map<String, dynamic> json) =>
      _$CalculatedDataPayloadFromJson(json);
}
