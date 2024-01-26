import 'package:freezed_annotation/freezed_annotation.dart';

import 'graph_point.dart';

part 'graph_response.freezed.dart';
part 'graph_response.g.dart';

@freezed
class GraphResponse with _$GraphResponse {
  const factory GraphResponse({
    required String ioId,
    @Default([]) List<GraphPoint> data,
  }) = _GraphResponse;

  factory GraphResponse.fromJson(Map<String, dynamic> json) =>
      _$GraphResponseFromJson(json);
}