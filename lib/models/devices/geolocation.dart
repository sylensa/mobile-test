import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'geolocation.freezed.dart';

part 'geolocation.g.dart';

@freezed
class Geolocation with _$Geolocation {
  const factory Geolocation({
    double? lat,
    double? lng,
  }) = _Geolocation;

  factory Geolocation.fromJson(Map<String, dynamic> json) =>
      _$GeolocationFromJson(json);
}