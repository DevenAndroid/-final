// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthCookie _$AuthCookieFromJson(Map<String, dynamic> json) {
  return _AuthCookie.fromJson(json);
}

/// @nodoc
class _$AuthCookieTearOff {
  const _$AuthCookieTearOff();

  _AuthCookie call(
      {String? cookie, String? cookieAdmin, String? cookieName, User? user}) {
    return _AuthCookie(
      cookie: cookie,
      cookieAdmin: cookieAdmin,
      cookieName: cookieName,
      user: user,
    );
  }

  AuthCookie fromJson(Map<String, Object?> json) {
    return AuthCookie.fromJson(json);
  }
}

/// @nodoc
const $AuthCookie = _$AuthCookieTearOff();

/// @nodoc
mixin _$AuthCookie {
  String? get cookie => throw _privateConstructorUsedError;
  String? get cookieAdmin => throw _privateConstructorUsedError;
  String? get cookieName => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthCookieCopyWith<AuthCookie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthCookieCopyWith<$Res> {
  factory $AuthCookieCopyWith(
          AuthCookie value, $Res Function(AuthCookie) then) =
      _$AuthCookieCopyWithImpl<$Res>;
  $Res call(
      {String? cookie, String? cookieAdmin, String? cookieName, User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthCookieCopyWithImpl<$Res> implements $AuthCookieCopyWith<$Res> {
  _$AuthCookieCopyWithImpl(this._value, this._then);

  final AuthCookie _value;
  // ignore: unused_field
  final $Res Function(AuthCookie) _then;

  @override
  $Res call({
    Object? cookie = freezed,
    Object? cookieAdmin = freezed,
    Object? cookieName = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      cookie: cookie == freezed
          ? _value.cookie
          : cookie // ignore: cast_nullable_to_non_nullable
              as String?,
      cookieAdmin: cookieAdmin == freezed
          ? _value.cookieAdmin
          : cookieAdmin // ignore: cast_nullable_to_non_nullable
              as String?,
      cookieName: cookieName == freezed
          ? _value.cookieName
          : cookieName // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$AuthCookieCopyWith<$Res> implements $AuthCookieCopyWith<$Res> {
  factory _$AuthCookieCopyWith(
          _AuthCookie value, $Res Function(_AuthCookie) then) =
      __$AuthCookieCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? cookie, String? cookieAdmin, String? cookieName, User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$AuthCookieCopyWithImpl<$Res> extends _$AuthCookieCopyWithImpl<$Res>
    implements _$AuthCookieCopyWith<$Res> {
  __$AuthCookieCopyWithImpl(
      _AuthCookie _value, $Res Function(_AuthCookie) _then)
      : super(_value, (v) => _then(v as _AuthCookie));

  @override
  _AuthCookie get _value => super._value as _AuthCookie;

  @override
  $Res call({
    Object? cookie = freezed,
    Object? cookieAdmin = freezed,
    Object? cookieName = freezed,
    Object? user = freezed,
  }) {
    return _then(_AuthCookie(
      cookie: cookie == freezed
          ? _value.cookie
          : cookie // ignore: cast_nullable_to_non_nullable
              as String?,
      cookieAdmin: cookieAdmin == freezed
          ? _value.cookieAdmin
          : cookieAdmin // ignore: cast_nullable_to_non_nullable
              as String?,
      cookieName: cookieName == freezed
          ? _value.cookieName
          : cookieName // ignore: cast_nullable_to_non_nullable
              as String?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthCookie implements _AuthCookie {
  const _$_AuthCookie(
      {this.cookie, this.cookieAdmin, this.cookieName, this.user});

  factory _$_AuthCookie.fromJson(Map<String, dynamic> json) =>
      _$$_AuthCookieFromJson(json);

  @override
  final String? cookie;
  @override
  final String? cookieAdmin;
  @override
  final String? cookieName;
  @override
  final User? user;

  @override
  String toString() {
    return 'AuthCookie(cookie: $cookie, cookieAdmin: $cookieAdmin, cookieName: $cookieName, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthCookie &&
            const DeepCollectionEquality().equals(other.cookie, cookie) &&
            const DeepCollectionEquality()
                .equals(other.cookieAdmin, cookieAdmin) &&
            const DeepCollectionEquality()
                .equals(other.cookieName, cookieName) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cookie),
      const DeepCollectionEquality().hash(cookieAdmin),
      const DeepCollectionEquality().hash(cookieName),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$AuthCookieCopyWith<_AuthCookie> get copyWith =>
      __$AuthCookieCopyWithImpl<_AuthCookie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthCookieToJson(this);
  }
}

abstract class _AuthCookie implements AuthCookie {
  const factory _AuthCookie(
      {String? cookie,
      String? cookieAdmin,
      String? cookieName,
      User? user}) = _$_AuthCookie;

  factory _AuthCookie.fromJson(Map<String, dynamic> json) =
      _$_AuthCookie.fromJson;

  @override
  String? get cookie;
  @override
  String? get cookieAdmin;
  @override
  String? get cookieName;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$AuthCookieCopyWith<_AuthCookie> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {int? id,
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
      String? avatar}) {
    return _User(
      id: id,
      username: username,
      niceName: niceName,
      email: email,
      url: url,
      profileImage: profileImage,
      registered: registered,
      displayName: displayName,
      firstName: firstName,
      lastName: lastName,
      nickname: nickname,
      description: description,
      capabilities: capabilities,
      avatar: avatar,
    );
  }

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  int? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'nicename')
  String? get niceName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_image")
  String? get profileImage => throw _privateConstructorUsedError;
  String? get registered => throw _privateConstructorUsedError;
  @JsonKey(name: 'displayname')
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'firstname')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastname')
  String? get lastName => throw _privateConstructorUsedError;
  String? get nickname => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  Capabilities? get capabilities => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {int? id,
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
      String? avatar});

  $CapabilitiesCopyWith<$Res>? get capabilities;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? niceName = freezed,
    Object? email = freezed,
    Object? url = freezed,
    Object? profileImage = freezed,
    Object? registered = freezed,
    Object? displayName = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? nickname = freezed,
    Object? description = freezed,
    Object? capabilities = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      niceName: niceName == freezed
          ? _value.niceName
          : niceName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      registered: registered == freezed
          ? _value.registered
          : registered // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      capabilities: capabilities == freezed
          ? _value.capabilities
          : capabilities // ignore: cast_nullable_to_non_nullable
              as Capabilities?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $CapabilitiesCopyWith<$Res>? get capabilities {
    if (_value.capabilities == null) {
      return null;
    }

    return $CapabilitiesCopyWith<$Res>(_value.capabilities!, (value) {
      return _then(_value.copyWith(capabilities: value));
    });
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
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
      String? avatar});

  @override
  $CapabilitiesCopyWith<$Res>? get capabilities;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? niceName = freezed,
    Object? email = freezed,
    Object? url = freezed,
    Object? profileImage = freezed,
    Object? registered = freezed,
    Object? displayName = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? nickname = freezed,
    Object? description = freezed,
    Object? capabilities = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      niceName: niceName == freezed
          ? _value.niceName
          : niceName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      registered: registered == freezed
          ? _value.registered
          : registered // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      capabilities: capabilities == freezed
          ? _value.capabilities
          : capabilities // ignore: cast_nullable_to_non_nullable
              as Capabilities?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {this.id,
      this.username,
      @JsonKey(name: 'nicename') this.niceName,
      this.email,
      this.url,
      @JsonKey(name: "profile_image") this.profileImage,
      this.registered,
      @JsonKey(name: 'displayname') this.displayName,
      @JsonKey(name: 'firstname') this.firstName,
      @JsonKey(name: 'lastname') this.lastName,
      this.nickname,
      this.description,
      this.capabilities,
      this.avatar});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final int? id;
  @override
  final String? username;
  @override
  @JsonKey(name: 'nicename')
  final String? niceName;
  @override
  final String? email;
  @override
  final String? url;
  @override
  @JsonKey(name: "profile_image")
  final String? profileImage;
  @override
  final String? registered;
  @override
  @JsonKey(name: 'displayname')
  final String? displayName;
  @override
  @JsonKey(name: 'firstname')
  final String? firstName;
  @override
  @JsonKey(name: 'lastname')
  final String? lastName;
  @override
  final String? nickname;
  @override
  final String? description;
  @override
  final Capabilities? capabilities;
  @override
  final String? avatar;

  @override
  String toString() {
    return 'User(id: $id, username: $username, niceName: $niceName, email: $email, url: $url, profileImage: $profileImage, registered: $registered, displayName: $displayName, firstName: $firstName, lastName: $lastName, nickname: $nickname, description: $description, capabilities: $capabilities, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.niceName, niceName) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.profileImage, profileImage) &&
            const DeepCollectionEquality()
                .equals(other.registered, registered) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.nickname, nickname) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.capabilities, capabilities) &&
            const DeepCollectionEquality().equals(other.avatar, avatar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(niceName),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(profileImage),
      const DeepCollectionEquality().hash(registered),
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(nickname),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(capabilities),
      const DeepCollectionEquality().hash(avatar));

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {int? id,
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
      String? avatar}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int? get id;
  @override
  String? get username;
  @override
  @JsonKey(name: 'nicename')
  String? get niceName;
  @override
  String? get email;
  @override
  String? get url;
  @override
  @JsonKey(name: "profile_image")
  String? get profileImage;
  @override
  String? get registered;
  @override
  @JsonKey(name: 'displayname')
  String? get displayName;
  @override
  @JsonKey(name: 'firstname')
  String? get firstName;
  @override
  @JsonKey(name: 'lastname')
  String? get lastName;
  @override
  String? get nickname;
  @override
  String? get description;
  @override
  Capabilities? get capabilities;
  @override
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}

Capabilities _$CapabilitiesFromJson(Map<String, dynamic> json) {
  return _Capabilities.fromJson(json);
}

/// @nodoc
class _$CapabilitiesTearOff {
  const _$CapabilitiesTearOff();

  _Capabilities call({@JsonKey(name: 'wcfm_vendor') bool? wcfmVendor}) {
    return _Capabilities(
      wcfmVendor: wcfmVendor,
    );
  }

  Capabilities fromJson(Map<String, Object?> json) {
    return Capabilities.fromJson(json);
  }
}

/// @nodoc
const $Capabilities = _$CapabilitiesTearOff();

/// @nodoc
mixin _$Capabilities {
  @JsonKey(name: 'wcfm_vendor')
  bool? get wcfmVendor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CapabilitiesCopyWith<Capabilities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CapabilitiesCopyWith<$Res> {
  factory $CapabilitiesCopyWith(
          Capabilities value, $Res Function(Capabilities) then) =
      _$CapabilitiesCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'wcfm_vendor') bool? wcfmVendor});
}

/// @nodoc
class _$CapabilitiesCopyWithImpl<$Res> implements $CapabilitiesCopyWith<$Res> {
  _$CapabilitiesCopyWithImpl(this._value, this._then);

  final Capabilities _value;
  // ignore: unused_field
  final $Res Function(Capabilities) _then;

  @override
  $Res call({
    Object? wcfmVendor = freezed,
  }) {
    return _then(_value.copyWith(
      wcfmVendor: wcfmVendor == freezed
          ? _value.wcfmVendor
          : wcfmVendor // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$CapabilitiesCopyWith<$Res>
    implements $CapabilitiesCopyWith<$Res> {
  factory _$CapabilitiesCopyWith(
          _Capabilities value, $Res Function(_Capabilities) then) =
      __$CapabilitiesCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'wcfm_vendor') bool? wcfmVendor});
}

/// @nodoc
class __$CapabilitiesCopyWithImpl<$Res> extends _$CapabilitiesCopyWithImpl<$Res>
    implements _$CapabilitiesCopyWith<$Res> {
  __$CapabilitiesCopyWithImpl(
      _Capabilities _value, $Res Function(_Capabilities) _then)
      : super(_value, (v) => _then(v as _Capabilities));

  @override
  _Capabilities get _value => super._value as _Capabilities;

  @override
  $Res call({
    Object? wcfmVendor = freezed,
  }) {
    return _then(_Capabilities(
      wcfmVendor: wcfmVendor == freezed
          ? _value.wcfmVendor
          : wcfmVendor // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Capabilities implements _Capabilities {
  const _$_Capabilities({@JsonKey(name: 'wcfm_vendor') this.wcfmVendor});

  factory _$_Capabilities.fromJson(Map<String, dynamic> json) =>
      _$$_CapabilitiesFromJson(json);

  @override
  @JsonKey(name: 'wcfm_vendor')
  final bool? wcfmVendor;

  @override
  String toString() {
    return 'Capabilities(wcfmVendor: $wcfmVendor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Capabilities &&
            const DeepCollectionEquality()
                .equals(other.wcfmVendor, wcfmVendor));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(wcfmVendor));

  @JsonKey(ignore: true)
  @override
  _$CapabilitiesCopyWith<_Capabilities> get copyWith =>
      __$CapabilitiesCopyWithImpl<_Capabilities>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CapabilitiesToJson(this);
  }
}

abstract class _Capabilities implements Capabilities {
  const factory _Capabilities(
      {@JsonKey(name: 'wcfm_vendor') bool? wcfmVendor}) = _$_Capabilities;

  factory _Capabilities.fromJson(Map<String, dynamic> json) =
      _$_Capabilities.fromJson;

  @override
  @JsonKey(name: 'wcfm_vendor')
  bool? get wcfmVendor;
  @override
  @JsonKey(ignore: true)
  _$CapabilitiesCopyWith<_Capabilities> get copyWith =>
      throw _privateConstructorUsedError;
}
