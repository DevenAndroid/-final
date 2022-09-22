import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class AuthCookie with _$AuthCookie {
  const factory AuthCookie({
    String? cookie,
    String? cookieAdmin,
    String? cookieName,
    User? user,
  }) = _AuthCookie;

  factory AuthCookie.fromJson(Map<String, dynamic> json) =>
      _$AuthCookieFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    int? id,
    String? username,
    @JsonKey(name: 'nicename') String? niceName,
    String? email,
    String? url,
    @JsonKey(name: "profile_image") String? profileImage,
    String? registered,
    @JsonKey(name: 'displayname') String? displayName,
    @JsonKey(name: 'firstname') String? firstName,
    @JsonKey(name: 'lastname') String? lastName,
    String? nickname,
    String? description,
    Capabilities? capabilities,
    String? avatar,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Capabilities with _$Capabilities {
  const factory Capabilities({
    @JsonKey(name: 'wcfm_vendor') bool? wcfmVendor,
  }) = _Capabilities;

  factory Capabilities.fromJson(Map<String, dynamic> json) =>
      _$CapabilitiesFromJson(json);
}
