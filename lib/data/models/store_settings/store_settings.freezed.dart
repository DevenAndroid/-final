// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'store_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StoreProfileInfo _$StoreProfileInfoFromJson(Map<String, dynamic> json) {
  return _StoreProfileInfo.fromJson(json);
}

/// @nodoc
class _$StoreProfileInfoTearOff {
  const _$StoreProfileInfoTearOff();

  _StoreProfileInfo call(
      {String? status, @JsonKey(name: "response") StoreProfile? storeProfile}) {
    return _StoreProfileInfo(
      status: status,
      storeProfile: storeProfile,
    );
  }

  StoreProfileInfo fromJson(Map<String, Object?> json) {
    return StoreProfileInfo.fromJson(json);
  }
}

/// @nodoc
const $StoreProfileInfo = _$StoreProfileInfoTearOff();

/// @nodoc
mixin _$StoreProfileInfo {
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "response")
  StoreProfile? get storeProfile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreProfileInfoCopyWith<StoreProfileInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreProfileInfoCopyWith<$Res> {
  factory $StoreProfileInfoCopyWith(
          StoreProfileInfo value, $Res Function(StoreProfileInfo) then) =
      _$StoreProfileInfoCopyWithImpl<$Res>;
  $Res call(
      {String? status, @JsonKey(name: "response") StoreProfile? storeProfile});

  $StoreProfileCopyWith<$Res>? get storeProfile;
}

/// @nodoc
class _$StoreProfileInfoCopyWithImpl<$Res>
    implements $StoreProfileInfoCopyWith<$Res> {
  _$StoreProfileInfoCopyWithImpl(this._value, this._then);

  final StoreProfileInfo _value;
  // ignore: unused_field
  final $Res Function(StoreProfileInfo) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? storeProfile = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      storeProfile: storeProfile == freezed
          ? _value.storeProfile
          : storeProfile // ignore: cast_nullable_to_non_nullable
              as StoreProfile?,
    ));
  }

  @override
  $StoreProfileCopyWith<$Res>? get storeProfile {
    if (_value.storeProfile == null) {
      return null;
    }

    return $StoreProfileCopyWith<$Res>(_value.storeProfile!, (value) {
      return _then(_value.copyWith(storeProfile: value));
    });
  }
}

/// @nodoc
abstract class _$StoreProfileInfoCopyWith<$Res>
    implements $StoreProfileInfoCopyWith<$Res> {
  factory _$StoreProfileInfoCopyWith(
          _StoreProfileInfo value, $Res Function(_StoreProfileInfo) then) =
      __$StoreProfileInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? status, @JsonKey(name: "response") StoreProfile? storeProfile});

  @override
  $StoreProfileCopyWith<$Res>? get storeProfile;
}

/// @nodoc
class __$StoreProfileInfoCopyWithImpl<$Res>
    extends _$StoreProfileInfoCopyWithImpl<$Res>
    implements _$StoreProfileInfoCopyWith<$Res> {
  __$StoreProfileInfoCopyWithImpl(
      _StoreProfileInfo _value, $Res Function(_StoreProfileInfo) _then)
      : super(_value, (v) => _then(v as _StoreProfileInfo));

  @override
  _StoreProfileInfo get _value => super._value as _StoreProfileInfo;

  @override
  $Res call({
    Object? status = freezed,
    Object? storeProfile = freezed,
  }) {
    return _then(_StoreProfileInfo(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      storeProfile: storeProfile == freezed
          ? _value.storeProfile
          : storeProfile // ignore: cast_nullable_to_non_nullable
              as StoreProfile?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoreProfileInfo implements _StoreProfileInfo {
  const _$_StoreProfileInfo(
      {this.status, @JsonKey(name: "response") this.storeProfile});

  factory _$_StoreProfileInfo.fromJson(Map<String, dynamic> json) =>
      _$$_StoreProfileInfoFromJson(json);

  @override
  final String? status;
  @override
  @JsonKey(name: "response")
  final StoreProfile? storeProfile;

  @override
  String toString() {
    return 'StoreProfileInfo(status: $status, storeProfile: $storeProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoreProfileInfo &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.storeProfile, storeProfile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(storeProfile));

  @JsonKey(ignore: true)
  @override
  _$StoreProfileInfoCopyWith<_StoreProfileInfo> get copyWith =>
      __$StoreProfileInfoCopyWithImpl<_StoreProfileInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreProfileInfoToJson(this);
  }
}

abstract class _StoreProfileInfo implements StoreProfileInfo {
  const factory _StoreProfileInfo(
          {String? status,
          @JsonKey(name: "response") StoreProfile? storeProfile}) =
      _$_StoreProfileInfo;

  factory _StoreProfileInfo.fromJson(Map<String, dynamic> json) =
      _$_StoreProfileInfo.fromJson;

  @override
  String? get status;
  @override
  @JsonKey(name: "response")
  StoreProfile? get storeProfile;
  @override
  @JsonKey(ignore: true)
  _$StoreProfileInfoCopyWith<_StoreProfileInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreProfile _$StoreProfileFromJson(Map<String, dynamic> json) {
  return _StoreProfile.fromJson(json);
}

/// @nodoc
class _$StoreProfileTearOff {
  const _$StoreProfileTearOff();

  _StoreProfile call(
      {@JsonKey(name: 'store_name') String? storeName,
      @JsonKey(name: 'phone') dynamic phone,
      @JsonKey(name: 'address') String? location,
      @JsonKey(name: 'logo_url') String? logoUrl,
      @JsonKey(name: 'banner_url') String? bannerUrl}) {
    return _StoreProfile(
      storeName: storeName,
      phone: phone,
      location: location,
      logoUrl: logoUrl,
      bannerUrl: bannerUrl,
    );
  }

  StoreProfile fromJson(Map<String, Object?> json) {
    return StoreProfile.fromJson(json);
  }
}

/// @nodoc
const $StoreProfile = _$StoreProfileTearOff();

/// @nodoc
mixin _$StoreProfile {
  @JsonKey(name: 'store_name')
  String? get storeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  dynamic get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_url')
  String? get logoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'banner_url')
  String? get bannerUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreProfileCopyWith<StoreProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreProfileCopyWith<$Res> {
  factory $StoreProfileCopyWith(
          StoreProfile value, $Res Function(StoreProfile) then) =
      _$StoreProfileCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'store_name') String? storeName,
      @JsonKey(name: 'phone') dynamic phone,
      @JsonKey(name: 'address') String? location,
      @JsonKey(name: 'logo_url') String? logoUrl,
      @JsonKey(name: 'banner_url') String? bannerUrl});
}

/// @nodoc
class _$StoreProfileCopyWithImpl<$Res> implements $StoreProfileCopyWith<$Res> {
  _$StoreProfileCopyWithImpl(this._value, this._then);

  final StoreProfile _value;
  // ignore: unused_field
  final $Res Function(StoreProfile) _then;

  @override
  $Res call({
    Object? storeName = freezed,
    Object? phone = freezed,
    Object? location = freezed,
    Object? logoUrl = freezed,
    Object? bannerUrl = freezed,
  }) {
    return _then(_value.copyWith(
      storeName: storeName == freezed
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: logoUrl == freezed
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerUrl: bannerUrl == freezed
          ? _value.bannerUrl
          : bannerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$StoreProfileCopyWith<$Res>
    implements $StoreProfileCopyWith<$Res> {
  factory _$StoreProfileCopyWith(
          _StoreProfile value, $Res Function(_StoreProfile) then) =
      __$StoreProfileCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'store_name') String? storeName,
      @JsonKey(name: 'phone') dynamic phone,
      @JsonKey(name: 'address') String? location,
      @JsonKey(name: 'logo_url') String? logoUrl,
      @JsonKey(name: 'banner_url') String? bannerUrl});
}

/// @nodoc
class __$StoreProfileCopyWithImpl<$Res> extends _$StoreProfileCopyWithImpl<$Res>
    implements _$StoreProfileCopyWith<$Res> {
  __$StoreProfileCopyWithImpl(
      _StoreProfile _value, $Res Function(_StoreProfile) _then)
      : super(_value, (v) => _then(v as _StoreProfile));

  @override
  _StoreProfile get _value => super._value as _StoreProfile;

  @override
  $Res call({
    Object? storeName = freezed,
    Object? phone = freezed,
    Object? location = freezed,
    Object? logoUrl = freezed,
    Object? bannerUrl = freezed,
  }) {
    return _then(_StoreProfile(
      storeName: storeName == freezed
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: logoUrl == freezed
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerUrl: bannerUrl == freezed
          ? _value.bannerUrl
          : bannerUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoreProfile implements _StoreProfile {
  const _$_StoreProfile(
      {@JsonKey(name: 'store_name') this.storeName,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'address') this.location,
      @JsonKey(name: 'logo_url') this.logoUrl,
      @JsonKey(name: 'banner_url') this.bannerUrl});

  factory _$_StoreProfile.fromJson(Map<String, dynamic> json) =>
      _$$_StoreProfileFromJson(json);

  @override
  @JsonKey(name: 'store_name')
  final String? storeName;
  @override
  @JsonKey(name: 'phone')
  final dynamic phone;
  @override
  @JsonKey(name: 'address')
  final String? location;
  @override
  @JsonKey(name: 'logo_url')
  final String? logoUrl;
  @override
  @JsonKey(name: 'banner_url')
  final String? bannerUrl;

  @override
  String toString() {
    return 'StoreProfile(storeName: $storeName, phone: $phone, location: $location, logoUrl: $logoUrl, bannerUrl: $bannerUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoreProfile &&
            const DeepCollectionEquality().equals(other.storeName, storeName) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.logoUrl, logoUrl) &&
            const DeepCollectionEquality().equals(other.bannerUrl, bannerUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(storeName),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(logoUrl),
      const DeepCollectionEquality().hash(bannerUrl));

  @JsonKey(ignore: true)
  @override
  _$StoreProfileCopyWith<_StoreProfile> get copyWith =>
      __$StoreProfileCopyWithImpl<_StoreProfile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreProfileToJson(this);
  }
}

abstract class _StoreProfile implements StoreProfile {
  const factory _StoreProfile(
      {@JsonKey(name: 'store_name') String? storeName,
      @JsonKey(name: 'phone') dynamic phone,
      @JsonKey(name: 'address') String? location,
      @JsonKey(name: 'logo_url') String? logoUrl,
      @JsonKey(name: 'banner_url') String? bannerUrl}) = _$_StoreProfile;

  factory _StoreProfile.fromJson(Map<String, dynamic> json) =
      _$_StoreProfile.fromJson;

  @override
  @JsonKey(name: 'store_name')
  String? get storeName;
  @override
  @JsonKey(name: 'phone')
  dynamic get phone;
  @override
  @JsonKey(name: 'address')
  String? get location;
  @override
  @JsonKey(name: 'logo_url')
  String? get logoUrl;
  @override
  @JsonKey(name: 'banner_url')
  String? get bannerUrl;
  @override
  @JsonKey(ignore: true)
  _$StoreProfileCopyWith<_StoreProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreSettings _$StoreSettingsFromJson(Map<String, dynamic> json) {
  return _StoreSettings.fromJson(json);
}

/// @nodoc
class _$StoreSettingsTearOff {
  const _$StoreSettingsTearOff();

  _StoreSettings call(
      {required String cookie,
      @JsonKey(name: 'store_name') String? name,
      dynamic phone,
      String? address,
      String? banner,
      String? logo}) {
    return _StoreSettings(
      cookie: cookie,
      name: name,
      phone: phone,
      address: address,
      banner: banner,
      logo: logo,
    );
  }

  StoreSettings fromJson(Map<String, Object?> json) {
    return StoreSettings.fromJson(json);
  }
}

/// @nodoc
const $StoreSettings = _$StoreSettingsTearOff();

/// @nodoc
mixin _$StoreSettings {
  String get cookie => throw _privateConstructorUsedError;
  @JsonKey(name: 'store_name')
  String? get name => throw _privateConstructorUsedError;
  dynamic get phone => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get banner => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreSettingsCopyWith<StoreSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreSettingsCopyWith<$Res> {
  factory $StoreSettingsCopyWith(
          StoreSettings value, $Res Function(StoreSettings) then) =
      _$StoreSettingsCopyWithImpl<$Res>;
  $Res call(
      {String cookie,
      @JsonKey(name: 'store_name') String? name,
      dynamic phone,
      String? address,
      String? banner,
      String? logo});
}

/// @nodoc
class _$StoreSettingsCopyWithImpl<$Res>
    implements $StoreSettingsCopyWith<$Res> {
  _$StoreSettingsCopyWithImpl(this._value, this._then);

  final StoreSettings _value;
  // ignore: unused_field
  final $Res Function(StoreSettings) _then;

  @override
  $Res call({
    Object? cookie = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? banner = freezed,
    Object? logo = freezed,
  }) {
    return _then(_value.copyWith(
      cookie: cookie == freezed
          ? _value.cookie
          : cookie // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: banner == freezed
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$StoreSettingsCopyWith<$Res>
    implements $StoreSettingsCopyWith<$Res> {
  factory _$StoreSettingsCopyWith(
          _StoreSettings value, $Res Function(_StoreSettings) then) =
      __$StoreSettingsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String cookie,
      @JsonKey(name: 'store_name') String? name,
      dynamic phone,
      String? address,
      String? banner,
      String? logo});
}

/// @nodoc
class __$StoreSettingsCopyWithImpl<$Res>
    extends _$StoreSettingsCopyWithImpl<$Res>
    implements _$StoreSettingsCopyWith<$Res> {
  __$StoreSettingsCopyWithImpl(
      _StoreSettings _value, $Res Function(_StoreSettings) _then)
      : super(_value, (v) => _then(v as _StoreSettings));

  @override
  _StoreSettings get _value => super._value as _StoreSettings;

  @override
  $Res call({
    Object? cookie = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? banner = freezed,
    Object? logo = freezed,
  }) {
    return _then(_StoreSettings(
      cookie: cookie == freezed
          ? _value.cookie
          : cookie // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      banner: banner == freezed
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoreSettings implements _StoreSettings {
  const _$_StoreSettings(
      {required this.cookie,
      @JsonKey(name: 'store_name') this.name,
      this.phone,
      this.address,
      this.banner,
      this.logo});

  factory _$_StoreSettings.fromJson(Map<String, dynamic> json) =>
      _$$_StoreSettingsFromJson(json);

  @override
  final String cookie;
  @override
  @JsonKey(name: 'store_name')
  final String? name;
  @override
  final dynamic phone;
  @override
  final String? address;
  @override
  final String? banner;
  @override
  final String? logo;

  @override
  String toString() {
    return 'StoreSettings(cookie: $cookie, name: $name, phone: $phone, address: $address, banner: $banner, logo: $logo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoreSettings &&
            const DeepCollectionEquality().equals(other.cookie, cookie) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.banner, banner) &&
            const DeepCollectionEquality().equals(other.logo, logo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cookie),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(banner),
      const DeepCollectionEquality().hash(logo));

  @JsonKey(ignore: true)
  @override
  _$StoreSettingsCopyWith<_StoreSettings> get copyWith =>
      __$StoreSettingsCopyWithImpl<_StoreSettings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreSettingsToJson(this);
  }
}

abstract class _StoreSettings implements StoreSettings {
  const factory _StoreSettings(
      {required String cookie,
      @JsonKey(name: 'store_name') String? name,
      dynamic phone,
      String? address,
      String? banner,
      String? logo}) = _$_StoreSettings;

  factory _StoreSettings.fromJson(Map<String, dynamic> json) =
      _$_StoreSettings.fromJson;

  @override
  String get cookie;
  @override
  @JsonKey(name: 'store_name')
  String? get name;
  @override
  dynamic get phone;
  @override
  String? get address;
  @override
  String? get banner;
  @override
  String? get logo;
  @override
  @JsonKey(ignore: true)
  _$StoreSettingsCopyWith<_StoreSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

StoreSettingsResponse _$StoreSettingsResponseFromJson(
    Map<String, dynamic> json) {
  return _StoreSettingsResponse.fromJson(json);
}

/// @nodoc
class _$StoreSettingsResponseTearOff {
  const _$StoreSettingsResponseTearOff();

  _StoreSettingsResponse call({String? status, String? message}) {
    return _StoreSettingsResponse(
      status: status,
      message: message,
    );
  }

  StoreSettingsResponse fromJson(Map<String, Object?> json) {
    return StoreSettingsResponse.fromJson(json);
  }
}

/// @nodoc
const $StoreSettingsResponse = _$StoreSettingsResponseTearOff();

/// @nodoc
mixin _$StoreSettingsResponse {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoreSettingsResponseCopyWith<StoreSettingsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreSettingsResponseCopyWith<$Res> {
  factory $StoreSettingsResponseCopyWith(StoreSettingsResponse value,
          $Res Function(StoreSettingsResponse) then) =
      _$StoreSettingsResponseCopyWithImpl<$Res>;
  $Res call({String? status, String? message});
}

/// @nodoc
class _$StoreSettingsResponseCopyWithImpl<$Res>
    implements $StoreSettingsResponseCopyWith<$Res> {
  _$StoreSettingsResponseCopyWithImpl(this._value, this._then);

  final StoreSettingsResponse _value;
  // ignore: unused_field
  final $Res Function(StoreSettingsResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$StoreSettingsResponseCopyWith<$Res>
    implements $StoreSettingsResponseCopyWith<$Res> {
  factory _$StoreSettingsResponseCopyWith(_StoreSettingsResponse value,
          $Res Function(_StoreSettingsResponse) then) =
      __$StoreSettingsResponseCopyWithImpl<$Res>;
  @override
  $Res call({String? status, String? message});
}

/// @nodoc
class __$StoreSettingsResponseCopyWithImpl<$Res>
    extends _$StoreSettingsResponseCopyWithImpl<$Res>
    implements _$StoreSettingsResponseCopyWith<$Res> {
  __$StoreSettingsResponseCopyWithImpl(_StoreSettingsResponse _value,
      $Res Function(_StoreSettingsResponse) _then)
      : super(_value, (v) => _then(v as _StoreSettingsResponse));

  @override
  _StoreSettingsResponse get _value => super._value as _StoreSettingsResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
  }) {
    return _then(_StoreSettingsResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StoreSettingsResponse implements _StoreSettingsResponse {
  const _$_StoreSettingsResponse({this.status, this.message});

  factory _$_StoreSettingsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_StoreSettingsResponseFromJson(json);

  @override
  final String? status;
  @override
  final String? message;

  @override
  String toString() {
    return 'StoreSettingsResponse(status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StoreSettingsResponse &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$StoreSettingsResponseCopyWith<_StoreSettingsResponse> get copyWith =>
      __$StoreSettingsResponseCopyWithImpl<_StoreSettingsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StoreSettingsResponseToJson(this);
  }
}

abstract class _StoreSettingsResponse implements StoreSettingsResponse {
  const factory _StoreSettingsResponse({String? status, String? message}) =
      _$_StoreSettingsResponse;

  factory _StoreSettingsResponse.fromJson(Map<String, dynamic> json) =
      _$_StoreSettingsResponse.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$StoreSettingsResponseCopyWith<_StoreSettingsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
