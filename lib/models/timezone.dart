import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timezone.freezed.dart';
part 'timezone.g.dart';

@freezed
class Timezone with _$Timezone {
  const factory Timezone({
    required String displayName,
    String? windowsId,
    required String ianaId,
  }) = _Timezone;

  factory Timezone.fromJson(Map<String, dynamic> json) =>
      _$TimezoneFromJson(json);
}