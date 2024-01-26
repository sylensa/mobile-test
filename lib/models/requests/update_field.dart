import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_field.freezed.dart';
part 'update_field.g.dart';
@freezed
class UpdateField with _$UpdateField {
  const factory UpdateField({
    @Default('replace') String op,
    required String path,
    required String value,
  }) = _UpdateField;

  factory UpdateField.fromJson(Map<String, dynamic> json) =>
      _$UpdateFieldFromJson(json);
}