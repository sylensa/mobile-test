import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info.freezed.dart';
part 'user_info.g.dart';

@freezed
class UserInfo with _$UserInfo {
  const factory UserInfo({
    required String sub,
    required String email,
    dynamic role,
    @JsonKey(name: 'preferred_username') required String preferredUsername,
    required String name,
    @JsonKey(name: 'email_verified') required bool emailVerified,
    required String eid,
    required String deid,
    required String eki,
    @JsonKey(name: 'user_abbr') required String userAbbr,
  }) = _UserInfo;

  factory UserInfo.fromJson(Map<String, dynamic> json) =>
      _$UserInfoFromJson(json);
}