// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MyUserTearOff {
  const _$MyUserTearOff();

  _MyUser call(
      {required String? uid,
      required String? email,
      required String? avatar,
      required String? firstName,
      required String? secondName,
      required String? phone}) {
    return _MyUser(
      uid: uid,
      email: email,
      avatar: avatar,
      firstName: firstName,
      secondName: secondName,
      phone: phone,
    );
  }
}

/// @nodoc
const $MyUser = _$MyUserTearOff();

/// @nodoc
mixin _$MyUser {
  String? get uid => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get secondName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyUserCopyWith<MyUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyUserCopyWith<$Res> {
  factory $MyUserCopyWith(MyUser value, $Res Function(MyUser) then) =
      _$MyUserCopyWithImpl<$Res>;
  $Res call(
      {String? uid,
      String? email,
      String? avatar,
      String? firstName,
      String? secondName,
      String? phone});
}

/// @nodoc
class _$MyUserCopyWithImpl<$Res> implements $MyUserCopyWith<$Res> {
  _$MyUserCopyWithImpl(this._value, this._then);

  final MyUser _value;
  // ignore: unused_field
  final $Res Function(MyUser) _then;

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
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      secondName: secondName == freezed
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MyUserCopyWith<$Res> implements $MyUserCopyWith<$Res> {
  factory _$MyUserCopyWith(_MyUser value, $Res Function(_MyUser) then) =
      __$MyUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? uid,
      String? email,
      String? avatar,
      String? firstName,
      String? secondName,
      String? phone});
}

/// @nodoc
class __$MyUserCopyWithImpl<$Res> extends _$MyUserCopyWithImpl<$Res>
    implements _$MyUserCopyWith<$Res> {
  __$MyUserCopyWithImpl(_MyUser _value, $Res Function(_MyUser) _then)
      : super(_value, (v) => _then(v as _MyUser));

  @override
  _MyUser get _value => super._value as _MyUser;

  @override
  $Res call({
    Object? uid = freezed,
    Object? email = freezed,
    Object? avatar = freezed,
    Object? firstName = freezed,
    Object? secondName = freezed,
    Object? phone = freezed,
  }) {
    return _then(_MyUser(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      secondName: secondName == freezed
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_MyUser implements _MyUser {
  const _$_MyUser(
      {required this.uid,
      required this.email,
      required this.avatar,
      required this.firstName,
      required this.secondName,
      required this.phone});

  @override
  final String? uid;
  @override
  final String? email;
  @override
  final String? avatar;
  @override
  final String? firstName;
  @override
  final String? secondName;
  @override
  final String? phone;

  @override
  String toString() {
    return 'MyUser(uid: $uid, email: $email, avatar: $avatar, firstName: $firstName, secondName: $secondName, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MyUser &&
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
  _$MyUserCopyWith<_MyUser> get copyWith =>
      __$MyUserCopyWithImpl<_MyUser>(this, _$identity);
}

abstract class _MyUser implements MyUser {
  const factory _MyUser(
      {required String? uid,
      required String? email,
      required String? avatar,
      required String? firstName,
      required String? secondName,
      required String? phone}) = _$_MyUser;

  @override
  String? get uid;
  @override
  String? get email;
  @override
  String? get avatar;
  @override
  String? get firstName;
  @override
  String? get secondName;
  @override
  String? get phone;
  @override
  @JsonKey(ignore: true)
  _$MyUserCopyWith<_MyUser> get copyWith => throw _privateConstructorUsedError;
}
