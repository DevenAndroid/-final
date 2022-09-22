// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreProfileInfo _$$_StoreProfileInfoFromJson(Map<String, dynamic> json) =>
    _$_StoreProfileInfo(
      status: json['status'] as String?,
      storeProfile: json['response'] == null
          ? null
          : StoreProfile.fromJson(json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StoreProfileInfoToJson(_$_StoreProfileInfo instance) =>
    <String, dynamic>{
      'status': instance.status,
      'response': instance.storeProfile,
    };

_$_StoreProfile _$$_StoreProfileFromJson(Map<String, dynamic> json) =>
    _$_StoreProfile(
      storeName: json['store_name'] as String?,
      phone: json['phone'],
      location: json['address'] as String?,
      logoUrl: json['logo_url'] as String?,
      bannerUrl: json['banner_url'] as String?,
    );

Map<String, dynamic> _$$_StoreProfileToJson(_$_StoreProfile instance) =>
    <String, dynamic>{
      'store_name': instance.storeName,
      'phone': instance.phone,
      'address': instance.location,
      'logo_url': instance.logoUrl,
      'banner_url': instance.bannerUrl,
    };

_$_StoreSettings _$$_StoreSettingsFromJson(Map<String, dynamic> json) =>
    _$_StoreSettings(
      cookie: json['cookie'] as String,
      name: json['store_name'] as String?,
      phone: json['phone'],
      address: json['address'] as String?,
      banner: json['banner'] as String?,
      logo: json['logo'] as String?,
    );

Map<String, dynamic> _$$_StoreSettingsToJson(_$_StoreSettings instance) =>
    <String, dynamic>{
      'cookie': instance.cookie,
      'store_name': instance.name,
      'phone': instance.phone,
      'address': instance.address,
      'banner': instance.banner,
      'logo': instance.logo,
    };

_$_StoreSettingsResponse _$$_StoreSettingsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_StoreSettingsResponse(
      status: json['status'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_StoreSettingsResponseToJson(
        _$_StoreSettingsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
