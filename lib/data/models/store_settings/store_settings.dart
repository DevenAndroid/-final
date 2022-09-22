import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_settings.freezed.dart';
part 'store_settings.g.dart';

@freezed
class StoreProfileInfo with _$StoreProfileInfo {
  const factory StoreProfileInfo({
    String? status,
    @JsonKey(name: "response") StoreProfile? storeProfile,
  }) = _StoreProfileInfo;

  factory StoreProfileInfo.fromJson(Map<String, dynamic> json) =>
      _$StoreProfileInfoFromJson(json);
}

@freezed
class StoreProfile with _$StoreProfile {
  const factory StoreProfile({
    @JsonKey(name: 'store_name') String? storeName,
    @JsonKey(name: 'phone') dynamic phone,
    @JsonKey(name: 'address') String? location,
    @JsonKey(name: 'logo_url') String? logoUrl,
    @JsonKey(name: 'banner_url') String? bannerUrl,
  }) = _StoreProfile;

  factory StoreProfile.fromJson(Map<String, dynamic> json) =>
      _$StoreProfileFromJson(json);
}

@freezed
class StoreSettings with _$StoreSettings {
  const factory StoreSettings({
    required String cookie,
    @JsonKey(name: 'store_name') String? name,
    dynamic phone,
    String? address,
    String? banner,
    String? logo,
  }) = _StoreSettings;

  factory StoreSettings.fromJson(Map<String, dynamic> json) =>
      _$StoreSettingsFromJson(json);
}

@freezed
class StoreSettingsResponse with _$StoreSettingsResponse {
  const factory StoreSettingsResponse({
    String? status,
    String? message,
  }) = _StoreSettingsResponse;

  factory StoreSettingsResponse.fromJson(Map<String, dynamic> json) =>
      _$StoreSettingsResponseFromJson(json);
}
