import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_prefs.freezed.dart';

part 'user_prefs.g.dart';

@freezed
class UserPrefs with _$UserPrefs {
  const factory UserPrefs({
    String? email,
    bool? emailConfirmed,
    bool? lockoutEnabled,
    String? lockoutEndDateUtc,
    String? mostRecentLoginUtc,
    bool? hasPassword,
    String? phoneNumber,
    bool? phoneNumberConfirmed,
    String? createdTimestampUTC,
    bool? acceptedTerms,
    int? acceptedTermsVersion,
    String? acceptedTermsTimestampUTC,
    List<String>? roles,
    String? userId,
    String? userName,
    String? firstName,
    String? lastName,
    String? culture,
    @Default('SI') String unitsSystem,
    int? enterpriseId,
    String? enterpriseName,
    bool? isDisabled,
    String? disabledTimestampUtc,
    int? farmCount,
    bool? acceptedProductUpdates,
  }) = _UserPrefs;

  factory UserPrefs.fromJson(Map<String, dynamic> json) =>
      _$UserPrefsFromJson(json);
}
