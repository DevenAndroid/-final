// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthCookie _$$_AuthCookieFromJson(Map<String, dynamic> json) =>
    _$_AuthCookie(
      cookie: json['cookie'] as String?,
      cookieAdmin: json['cookieAdmin'] as String?,
      cookieName: json['cookieName'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AuthCookieToJson(_$_AuthCookie instance) =>
    <String, dynamic>{
      'cookie': instance.cookie,
      'cookieAdmin': instance.cookieAdmin,
      'cookieName': instance.cookieName,
      'user': instance.user,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int?,
      username: json['username'] as String?,
      niceName: json['nicename'] as String?,
      email: json['email'] as String?,
      url: json['url'] as String?,
      profileImage: json['profile_image'] as String?,
      registered: json['registered'] as String?,
      displayName: json['displayname'] as String?,
      firstName: json['firstname'] as String?,
      lastName: json['lastname'] as String?,
      nickname: json['nickname'] as String?,
      description: json['description'] as String?,
      capabilities: json['capabilities'] == null
          ? null
          : Capabilities.fromJson(json['capabilities'] as Map<String, dynamic>),
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'nicename': instance.niceName,
      'email': instance.email,
      'url': instance.url,
      'profile_image': instance.profileImage,
      'registered': instance.registered,
      'displayname': instance.displayName,
      'firstname': instance.firstName,
      'lastname': instance.lastName,
      'nickname': instance.nickname,
      'description': instance.description,
      'capabilities': instance.capabilities,
      'avatar': instance.avatar,
    };

_$_Capabilities _$$_CapabilitiesFromJson(Map<String, dynamic> json) =>
    _$_Capabilities(
      wcfmVendor: json['wcfm_vendor'] as bool?,
    );

Map<String, dynamic> _$$_CapabilitiesToJson(_$_Capabilities instance) =>
    <String, dynamic>{
      'wcfm_vendor': instance.wcfmVendor,
    };
