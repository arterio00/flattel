// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiUser _$ApiUserFromJson(Map<String, dynamic> json) {
  return _ApiUser.fromJson(json);
}

/// @nodoc
class _$ApiUserTearOff {
  const _$ApiUserTearOff();

  _ApiUser call(
      {required dynamic uid,
      required dynamic email,
      required dynamic avatar,
      required dynamic firstName,
      required dynamic secondName,
      required dynamic phone}) {
    return _ApiUser(
      uid: uid,
      email: email,
      avatar: avatar,
      firstName: firstName,
      secondName: secondName,
      phone: phone,
    );
  }

  ApiUser fromJson(Map<String, Object?> json) {
    return ApiUser.fromJson(json);
  }
}

/// @nodoc
const $ApiUser = _$ApiUserTearOff();

/// @nodoc
mixin _$ApiUser {
  dynamic get uid => throw _privateConstructorUsedError;
  dynamic get email => throw _privateConstructorUsedError;
  dynamic get avatar => throw _privateConstructorUsedError;
  dynamic get firstName => throw _privateConstructorUsedError;
  dynamic get secondName => throw _privateConstructorUsedError;
  dynamic get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiUserCopyWith<ApiUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiUserCopyWith<$Res> {
  factory $ApiUserCopyWith(ApiUser value, $Res Function(ApiUser) then) =
      _$ApiUserCopyWithImpl<$Res>;
  $Res call(
      {dynamic uid,
      dynamic email,
      dynamic avatar,
      dynamic firstName,
      dynamic secondName,
      dynamic phone});
}

/// @nodoc
class _$ApiUserCopyWithImpl<$Res> implements $ApiUserCopyWith<$Res> {
  _$ApiUserCopyWithImpl(this._value, this._then);

  final ApiUser _value;
  // ignore: unused_field
  final $Res Function(ApiUser) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? avatar = freezed,
    Object? firstName = freezed,
    Object? secondName = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as dynamic,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as dynamic,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      secondName: secondName == freezed
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$ApiUserCopyWith<$Res> implements $ApiUserCopyWith<$Res> {
  factory _$ApiUserCopyWith(_ApiUser value, $Res Function(_ApiUser) then) =
      __$ApiUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic uid,
      dynamic email,
      dynamic avatar,
      dynamic firstName,
      dynamic secondName,
      dynamic phone});
}

/// @nodoc
class __$ApiUserCopyWithImpl<$Res> extends _$ApiUserCopyWithImpl<$Res>
    implements _$ApiUserCopyWith<$Res> {
  __$ApiUserCopyWithImpl(_ApiUser _value, $Res Function(_ApiUser) _then)
      : super(_value, (v) => _then(v as _ApiUser));

  @override
  _ApiUser get _value => super._value as _ApiUser;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? avatar = freezed,
    Object? firstName = freezed,
    Object? secondName = freezed,
    Object? phone = freezed,
  }) {
    return _then(_ApiUser(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as dynamic,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as dynamic,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      secondName: secondName == freezed
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiUser implements _ApiUser {
  const _$_ApiUser(
      {required this.uid,
      required this.email,
      required this.avatar,
      required this.firstName,
      required this.secondName,
      required this.phone});

  factory _$_ApiUser.fromJson(Map<String, dynamic> json) =>
      _$$_ApiUserFromJson(json);

  @override
  final dynamic uid;
  @override
  final dynamic email;
  @override
  final dynamic avatar;
  @override
  final dynamic firstName;
  @override
  final dynamic secondName;
  @override
  final dynamic phone;

  @override
  String toString() {
    return 'ApiUser(uid: $uid, email: $email, avatar: $avatar, firstName: $firstName, secondName: $secondName, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiUser &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality()
                .equals(other.secondName, secondName) &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(avatar),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(secondName),
      const DeepCollectionEquality().hash(phone));

  @JsonKey(ignore: true)
  @override
  _$ApiUserCopyWith<_ApiUser> get copyWith =>
      __$ApiUserCopyWithImpl<_ApiUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiUserToJson(this);
  }
}

abstract class _ApiUser implements ApiUser {
  const factory _ApiUser(
      {required dynamic uid,
      required dynamic email,
      required dynamic avatar,
      required dynamic firstName,
      required dynamic secondName,
      required dynamic phone}) = _$_ApiUser;

  factory _ApiUser.fromJson(Map<String, dynamic> json) = _$_ApiUser.fromJson;

  @override
  dynamic get uid;
  @override
  dynamic get email;
  @override
  dynamic get avatar;
  @override
  dynamic get firstName;
  @override
  dynamic get secondName;
  @override
  dynamic get phone;
  @override
  @JsonKey(ignore: true)
  _$ApiUserCopyWith<_ApiUser> get copyWith =>
      throw _privateConstructorUsedError;
}
