import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_resources_response.freezed.dart';
part 'text_resources_response.g.dart';

@freezed
class TextResourcesResponse with _$TextResourcesResponse {
  const factory TextResourcesResponse({
required Map<String, Map<String, String>> groupedResources,
    required int page,
    required int pageSize,
    required int totalRecords,
    required String updateTimestamp
  }) = _TextResourcesResponse;

  factory TextResourcesResponse.fromJson(Map<String, dynamic> json) =>
      _$TextResourcesResponseFromJson(json);
}