// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  _AuthSignIn signIn(BuildContext context, MyUser myUser) {
    return _AuthSignIn(
      context,
      myUser,
    );
  }

  _AuthRegistration registration(BuildContext context, MyUser myUser) {
    return _AuthRegistration(
      context,
      myUser,
    );
  }

  _AuthLogout logOut() {
    return const _AuthLogout();
  }

  _AuthUserChanged userChanged(User? user) {
    return _AuthUserChanged(
      user,
    );
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, MyUser myUser) signIn,
    required TResult Function(BuildContext context, MyUser myUser) registration,
    required TResult Function() logOut,
    required TResult Function(User? user) userChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, MyUser myUser)? signIn,
    TResult Function(BuildContext context, MyUser myUser)? registration,
    TResult Function()? logOut,
    TResult Function(User? user)? userChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, MyUser myUser)? signIn,
    TResult Function(BuildContext context, MyUser myUser)? registration,
    TResult Function()? logOut,
    TResult Function(User? user)? userChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthSignIn value) signIn,
    required TResult Function(_AuthRegistration value) registration,
    required TResult Function(_AuthLogout value) logOut,
    required TResult Function(_AuthUserChanged value) userChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthSignIn value)? signIn,
    TResult Function(_AuthRegistration value)? registration,
    TResult Function(_AuthLogout value)? logOut,
    TResult Function(_AuthUserChanged value)? userChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthSignIn value)? signIn,
    TResult Function(_AuthRegistration value)? registration,
    TResult Function(_AuthLogout value)? logOut,
    TResult Function(_AuthUserChanged value)? userChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$AuthSignInCopyWith<$Res> {
  factory _$AuthSignInCopyWith(
          _AuthSignIn value, $Res Function(_AuthSignIn) then) =
      __$AuthSignInCopyWithImpl<$Res>;
  $Res call({BuildContext context, MyUser myUser});

  $MyUserCopyWith<$Res> get myUser;
}

/// @nodoc
class __$AuthSignInCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$AuthSignInCopyWith<$Res> {
  __$AuthSignInCopyWithImpl(
      _AuthSignIn _value, $Res Function(_AuthSignIn) _then)
      : super(_value, (v) => _then(v as _AuthSignIn));

  @override
  _AuthSignIn get _value => super._value as _AuthSignIn;

  @override
  $Res call({
    Object? context = freezed,
    Object? myUser = freezed,
  }) {
    return _then(_AuthSignIn(
      context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as MyUser,
    ));
  }

  @override
  $MyUserCopyWith<$Res> get myUser {
    return $MyUserCopyWith<$Res>(_value.myUser, (value) {
      return _then(_value.copyWith(myUser: value));
    });
  }
}

/// @nodoc

class _$_AuthSignIn implements _AuthSignIn {
  const _$_AuthSignIn(this.context, this.myUser);

  @override
  final BuildContext context;
  @override
  final MyUser myUser;

  @override
  String toString() {
    return 'AuthEvent.signIn(context: $context, myUser: $myUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthSignIn &&
            const DeepCollectionEquality().equals(other.context, context) &&
            const DeepCollectionEquality().equals(other.myUser, myUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(context),
      const DeepCollectionEquality().hash(myUser));

  @JsonKey(ignore: true)
  @override
  _$AuthSignInCopyWith<_AuthSignIn> get copyWith =>
      __$AuthSignInCopyWithImpl<_AuthSignIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, MyUser myUser) signIn,
    required TResult Function(BuildContext context, MyUser myUser) registration,
    required TResult Function() logOut,
    required TResult Function(User? user) userChanged,
  }) {
    return signIn(context, myUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, MyUser myUser)? signIn,
    TResult Function(BuildContext context, MyUser myUser)? registration,
    TResult Function()? logOut,
    TResult Function(User? user)? userChanged,
  }) {
    return signIn?.call(context, myUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, MyUser myUser)? signIn,
    TResult Function(BuildContext context, MyUser myUser)? registration,
    TResult Function()? logOut,
    TResult Function(User? user)? userChanged,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(context, myUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthSignIn value) signIn,
    required TResult Function(_AuthRegistration value) registration,
    required TResult Function(_AuthLogout value) logOut,
    required TResult Function(_AuthUserChanged value) userChanged,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthSignIn value)? signIn,
    TResult Function(_AuthRegistration value)? registration,
    TResult Function(_AuthLogout value)? logOut,
    TResult Function(_AuthUserChanged value)? userChanged,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthSignIn value)? signIn,
    TResult Function(_AuthRegistration value)? registration,
    TResult Function(_AuthLogout value)? logOut,
    TResult Function(_AuthUserChanged value)? userChanged,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _AuthSignIn implements AuthEvent {
  const factory _AuthSignIn(BuildContext context, MyUser myUser) =
      _$_AuthSignIn;

  BuildContext get context;
  MyUser get myUser;
  @JsonKey(ignore: true)
  _$AuthSignInCopyWith<_AuthSignIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AuthRegistrationCopyWith<$Res> {
  factory _$AuthRegistrationCopyWith(
          _AuthRegistration value, $Res Function(_AuthRegistration) then) =
      __$AuthRegistrationCopyWithImpl<$Res>;
  $Res call({BuildContext context, MyUser myUser});

  $MyUserCopyWith<$Res> get myUser;
}

/// @nodoc
class __$AuthRegistrationCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$AuthRegistrationCopyWith<$Res> {
  __$AuthRegistrationCopyWithImpl(
      _AuthRegistration _value, $Res Function(_AuthRegistration) _then)
      : super(_value, (v) => _then(v as _AuthRegistration));

  @override
  _AuthRegistration get _value => super._value as _AuthRegistration;

  @override
  $Res call({
    Object? context = freezed,
    Object? myUser = freezed,
  }) {
    return _then(_AuthRegistration(
      context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      myUser == freezed
          ? _value.myUser
          : myUser // ignore: cast_nullable_to_non_nullable
              as MyUser,
    ));
  }

  @override
  $MyUserCopyWith<$Res> get myUser {
    return $MyUserCopyWith<$Res>(_value.myUser, (value) {
      return _then(_value.copyWith(myUser: value));
    });
  }
}

/// @nodoc

class _$_AuthRegistration implements _AuthRegistration {
  const _$_AuthRegistration(this.context, this.myUser);

  @override
  final BuildContext context;
  @override
  final MyUser myUser;

  @override
  String toString() {
    return 'AuthEvent.registration(context: $context, myUser: $myUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthRegistration &&
            const DeepCollectionEquality().equals(other.context, context) &&
            const DeepCollectionEquality().equals(other.myUser, myUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(context),
      const DeepCollectionEquality().hash(myUser));

  @JsonKey(ignore: true)
  @override
  _$AuthRegistrationCopyWith<_AuthRegistration> get copyWith =>
      __$AuthRegistrationCopyWithImpl<_AuthRegistration>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, MyUser myUser) signIn,
    required TResult Function(BuildContext context, MyUser myUser) registration,
    required TResult Function() logOut,
    required TResult Function(User? user) userChanged,
  }) {
    return registration(context, myUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, MyUser myUser)? signIn,
    TResult Function(BuildContext context, MyUser myUser)? registration,
    TResult Function()? logOut,
    TResult Function(User? user)? userChanged,
  }) {
    return registration?.call(context, myUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, MyUser myUser)? signIn,
    TResult Function(BuildContext context, MyUser myUser)? registration,
    TResult Function()? logOut,
    TResult Function(User? user)? userChanged,
    required TResult orElse(),
  }) {
    if (registration != null) {
      return registration(context, myUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthSignIn value) signIn,
    required TResult Function(_AuthRegistration value) registration,
    required TResult Function(_AuthLogout value) logOut,
    required TResult Function(_AuthUserChanged value) userChanged,
  }) {
    return registration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthSignIn value)? signIn,
    TResult Function(_AuthRegistration value)? registration,
    TResult Function(_AuthLogout value)? logOut,
    TResult Function(_AuthUserChanged value)? userChanged,
  }) {
    return registration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthSignIn value)? signIn,
    TResult Function(_AuthRegistration value)? registration,
    TResult Function(_AuthLogout value)? logOut,
    TResult Function(_AuthUserChanged value)? userChanged,
    required TResult orElse(),
  }) {
    if (registration != null) {
      return registration(this);
    }
    return orElse();
  }
}

abstract class _AuthRegistration implements AuthEvent {
  const factory _AuthRegistration(BuildContext context, MyUser myUser) =
      _$_AuthRegistration;

  BuildContext get context;
  MyUser get myUser;
  @JsonKey(ignore: true)
  _$AuthRegistrationCopyWith<_AuthRegistration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AuthLogoutCopyWith<$Res> {
  factory _$AuthLogoutCopyWith(
          _AuthLogout value, $Res Function(_AuthLogout) then) =
      __$AuthLogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$AuthLogoutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$AuthLogoutCopyWith<$Res> {
  __$AuthLogoutCopyWithImpl(
      _AuthLogout _value, $Res Function(_AuthLogout) _then)
      : super(_value, (v) => _then(v as _AuthLogout));

  @override
  _AuthLogout get _value => super._value as _AuthLogout;
}

/// @nodoc

class _$_AuthLogout implements _AuthLogout {
  const _$_AuthLogout();

  @override
  String toString() {
    return 'AuthEvent.logOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AuthLogout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, MyUser myUser) signIn,
    required TResult Function(BuildContext context, MyUser myUser) registration,
    required TResult Function() logOut,
    required TResult Function(User? user) userChanged,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, MyUser myUser)? signIn,
    TResult Function(BuildContext context, MyUser myUser)? registration,
    TResult Function()? logOut,
    TResult Function(User? user)? userChanged,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, MyUser myUser)? signIn,
    TResult Function(BuildContext context, MyUser myUser)? registration,
    TResult Function()? logOut,
    TResult Function(User? user)? userChanged,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthSignIn value) signIn,
    required TResult Function(_AuthRegistration value) registration,
    required TResult Function(_AuthLogout value) logOut,
    required TResult Function(_AuthUserChanged value) userChanged,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthSignIn value)? signIn,
    TResult Function(_AuthRegistration value)? registration,
    TResult Function(_AuthLogout value)? logOut,
    TResult Function(_AuthUserChanged value)? userChanged,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthSignIn value)? signIn,
    TResult Function(_AuthRegistration value)? registration,
    TResult Function(_AuthLogout value)? logOut,
    TResult Function(_AuthUserChanged value)? userChanged,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _AuthLogout implements AuthEvent {
  const factory _AuthLogout() = _$_AuthLogout;
}

/// @nodoc
abstract class _$AuthUserChangedCopyWith<$Res> {
  factory _$AuthUserChangedCopyWith(
          _AuthUserChanged value, $Res Function(_AuthUserChanged) then) =
      __$AuthUserChangedCopyWithImpl<$Res>;
  $Res call({User? user});
}

/// @nodoc
class __$AuthUserChangedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$AuthUserChangedCopyWith<$Res> {
  __$AuthUserChangedCopyWithImpl(
      _AuthUserChanged _value, $Res Function(_AuthUserChanged) _then)
      : super(_value, (v) => _then(v as _AuthUserChanged));

  @override
  _AuthUserChanged get _value => super._value as _AuthUserChanged;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_AuthUserChanged(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_AuthUserChanged implements _AuthUserChanged {
  const _$_AuthUserChanged(this.user);

  @override
  final User? user;

  @override
  String toString() {
    return 'AuthEvent.userChanged(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthUserChanged &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$AuthUserChangedCopyWith<_AuthUserChanged> get copyWith =>
      __$AuthUserChangedCopyWithImpl<_AuthUserChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, MyUser myUser) signIn,
    required TResult Function(BuildContext context, MyUser myUser) registration,
    required TResult Function() logOut,
    required TResult Function(User? user) userChanged,
  }) {
    return userChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, MyUser myUser)? signIn,
    TResult Function(BuildContext context, MyUser myUser)? registration,
    TResult Function()? logOut,
    TResult Function(User? user)? userChanged,
  }) {
    return userChanged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, MyUser myUser)? signIn,
    TResult Function(BuildContext context, MyUser myUser)? registration,
    TResult Function()? logOut,
    TResult Function(User? user)? userChanged,
    required TResult orElse(),
  }) {
    if (userChanged != null) {
      return userChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthSignIn value) signIn,
    required TResult Function(_AuthRegistration value) registration,
    required TResult Function(_AuthLogout value) logOut,
    required TResult Function(_AuthUserChanged value) userChanged,
  }) {
    return userChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthSignIn value)? signIn,
    TResult Function(_AuthRegistration value)? registration,
    TResult Function(_AuthLogout value)? logOut,
    TResult Function(_AuthUserChanged value)? userChanged,
  }) {
    return userChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthSignIn value)? signIn,
    TResult Function(_AuthRegistration value)? registration,
    TResult Function(_AuthLogout value)? logOut,
    TResult Function(_AuthUserChanged value)? userChanged,
    required TResult orElse(),
  }) {
    if (userChanged != null) {
      return userChanged(this);
    }
    return orElse();
  }
}

abstract class _AuthUserChanged implements AuthEvent {
  const factory _AuthUserChanged(User? user) = _$_AuthUserChanged;

  User? get user;
  @JsonKey(ignore: true)
  _$AuthUserChangedCopyWith<_AuthUserChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _UnAuthenticated unAuthenticated() {
    return _UnAuthenticated();
  }

  _Authenticated authenticated(User user) {
    return _Authenticated(
      user,
    );
  }

  _ErrorAuthState error({String message = 'Произошла ошибка'}) {
    return _ErrorAuthState(
      message: message,
    );
  }

  _InProgressAuthState inProgress() {
    return _InProgressAuthState();
  }

  _InSuccessAuthState success() {
    return _InSuccessAuthState();
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unAuthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function(String message) error,
    required TResult Function() inProgress,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unAuthenticated,
    TResult Function(User user)? authenticated,
    TResult Function(String message)? error,
    TResult Function()? inProgress,
    TResult Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unAuthenticated,
    TResult Function(User user)? authenticated,
    TResult Function(String message)? error,
    TResult Function()? inProgress,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_ErrorAuthState value) error,
    required TResult Function(_InProgressAuthState value) inProgress,
    required TResult Function(_InSuccessAuthState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_InProgressAuthState value)? inProgress,
    TResult Function(_InSuccessAuthState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_InProgressAuthState value)? inProgress,
    TResult Function(_InSuccessAuthState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$UnAuthenticatedCopyWith<$Res> {
  factory _$UnAuthenticatedCopyWith(
          _UnAuthenticated value, $Res Function(_UnAuthenticated) then) =
      __$UnAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnAuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$UnAuthenticatedCopyWith<$Res> {
  __$UnAuthenticatedCopyWithImpl(
      _UnAuthenticated _value, $Res Function(_UnAuthenticated) _then)
      : super(_value, (v) => _then(v as _UnAuthenticated));

  @override
  _UnAuthenticated get _value => super._value as _UnAuthenticated;
}

/// @nodoc

class _$_UnAuthenticated extends _UnAuthenticated {
  _$_UnAuthenticated() : super._();

  @override
  String toString() {
    return 'AuthState.unAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _UnAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unAuthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function(String message) error,
    required TResult Function() inProgress,
    required TResult Function() success,
  }) {
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unAuthenticated,
    TResult Function(User user)? authenticated,
    TResult Function(String message)? error,
    TResult Function()? inProgress,
    TResult Function()? success,
  }) {
    return unAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unAuthenticated,
    TResult Function(User user)? authenticated,
    TResult Function(String message)? error,
    TResult Function()? inProgress,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_ErrorAuthState value) error,
    required TResult Function(_InProgressAuthState value) inProgress,
    required TResult Function(_InSuccessAuthState value) success,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_InProgressAuthState value)? inProgress,
    TResult Function(_InSuccessAuthState value)? success,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_InProgressAuthState value)? inProgress,
    TResult Function(_InSuccessAuthState value)? success,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnAuthenticated extends AuthState {
  factory _UnAuthenticated() = _$_UnAuthenticated;
  _UnAuthenticated._() : super._();
}

/// @nodoc
abstract class _$AuthenticatedCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(
          _Authenticated value, $Res Function(_Authenticated) then) =
      __$AuthenticatedCopyWithImpl<$Res>;
  $Res call({User user});
}

/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(
      _Authenticated _value, $Res Function(_Authenticated) _then)
      : super(_value, (v) => _then(v as _Authenticated));

  @override
  _Authenticated get _value => super._value as _Authenticated;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_Authenticated(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_Authenticated extends _Authenticated {
  _$_Authenticated(this.user) : super._();

  @override
  final User user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Authenticated &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      __$AuthenticatedCopyWithImpl<_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unAuthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function(String message) error,
    required TResult Function() inProgress,
    required TResult Function() success,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unAuthenticated,
    TResult Function(User user)? authenticated,
    TResult Function(String message)? error,
    TResult Function()? inProgress,
    TResult Function()? success,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unAuthenticated,
    TResult Function(User user)? authenticated,
    TResult Function(String message)? error,
    TResult Function()? inProgress,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_ErrorAuthState value) error,
    required TResult Function(_InProgressAuthState value) inProgress,
    required TResult Function(_InSuccessAuthState value) success,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_InProgressAuthState value)? inProgress,
    TResult Function(_InSuccessAuthState value)? success,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_InProgressAuthState value)? inProgress,
    TResult Function(_InSuccessAuthState value)? success,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated extends AuthState {
  factory _Authenticated(User user) = _$_Authenticated;
  _Authenticated._() : super._();

  User get user;
  @JsonKey(ignore: true)
  _$AuthenticatedCopyWith<_Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorAuthStateCopyWith<$Res> {
  factory _$ErrorAuthStateCopyWith(
          _ErrorAuthState value, $Res Function(_ErrorAuthState) then) =
      __$ErrorAuthStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ErrorAuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$ErrorAuthStateCopyWith<$Res> {
  __$ErrorAuthStateCopyWithImpl(
      _ErrorAuthState _value, $Res Function(_ErrorAuthState) _then)
      : super(_value, (v) => _then(v as _ErrorAuthState));

  @override
  _ErrorAuthState get _value => super._value as _ErrorAuthState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ErrorAuthState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorAuthState extends _ErrorAuthState {
  _$_ErrorAuthState({this.message = 'Произошла ошибка'}) : super._();

  @JsonKey()
  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorAuthState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ErrorAuthStateCopyWith<_ErrorAuthState> get copyWith =>
      __$ErrorAuthStateCopyWithImpl<_ErrorAuthState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unAuthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function(String message) error,
    required TResult Function() inProgress,
    required TResult Function() success,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unAuthenticated,
    TResult Function(User user)? authenticated,
    TResult Function(String message)? error,
    TResult Function()? inProgress,
    TResult Function()? success,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unAuthenticated,
    TResult Function(User user)? authenticated,
    TResult Function(String message)? error,
    TResult Function()? inProgress,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_ErrorAuthState value) error,
    required TResult Function(_InProgressAuthState value) inProgress,
    required TResult Function(_InSuccessAuthState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_InProgressAuthState value)? inProgress,
    TResult Function(_InSuccessAuthState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_InProgressAuthState value)? inProgress,
    TResult Function(_InSuccessAuthState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorAuthState extends AuthState {
  factory _ErrorAuthState({String message}) = _$_ErrorAuthState;
  _ErrorAuthState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$ErrorAuthStateCopyWith<_ErrorAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InProgressAuthStateCopyWith<$Res> {
  factory _$InProgressAuthStateCopyWith(_InProgressAuthState value,
          $Res Function(_InProgressAuthState) then) =
      __$InProgressAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InProgressAuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$InProgressAuthStateCopyWith<$Res> {
  __$InProgressAuthStateCopyWithImpl(
      _InProgressAuthState _value, $Res Function(_InProgressAuthState) _then)
      : super(_value, (v) => _then(v as _InProgressAuthState));

  @override
  _InProgressAuthState get _value => super._value as _InProgressAuthState;
}

/// @nodoc

class _$_InProgressAuthState extends _InProgressAuthState {
  _$_InProgressAuthState() : super._();

  @override
  String toString() {
    return 'AuthState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InProgressAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unAuthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function(String message) error,
    required TResult Function() inProgress,
    required TResult Function() success,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unAuthenticated,
    TResult Function(User user)? authenticated,
    TResult Function(String message)? error,
    TResult Function()? inProgress,
    TResult Function()? success,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unAuthenticated,
    TResult Function(User user)? authenticated,
    TResult Function(String message)? error,
    TResult Function()? inProgress,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_ErrorAuthState value) error,
    required TResult Function(_InProgressAuthState value) inProgress,
    required TResult Function(_InSuccessAuthState value) success,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_InProgressAuthState value)? inProgress,
    TResult Function(_InSuccessAuthState value)? success,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_InProgressAuthState value)? inProgress,
    TResult Function(_InSuccessAuthState value)? success,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgressAuthState extends AuthState {
  factory _InProgressAuthState() = _$_InProgressAuthState;
  _InProgressAuthState._() : super._();
}

/// @nodoc
abstract class _$InSuccessAuthStateCopyWith<$Res> {
  factory _$InSuccessAuthStateCopyWith(
          _InSuccessAuthState value, $Res Function(_InSuccessAuthState) then) =
      __$InSuccessAuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InSuccessAuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$InSuccessAuthStateCopyWith<$Res> {
  __$InSuccessAuthStateCopyWithImpl(
      _InSuccessAuthState _value, $Res Function(_InSuccessAuthState) _then)
      : super(_value, (v) => _then(v as _InSuccessAuthState));

  @override
  _InSuccessAuthState get _value => super._value as _InSuccessAuthState;
}

/// @nodoc

class _$_InSuccessAuthState extends _InSuccessAuthState {
  _$_InSuccessAuthState() : super._();

  @override
  String toString() {
    return 'AuthState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InSuccessAuthState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unAuthenticated,
    required TResult Function(User user) authenticated,
    required TResult Function(String message) error,
    required TResult Function() inProgress,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? unAuthenticated,
    TResult Function(User user)? authenticated,
    TResult Function(String message)? error,
    TResult Function()? inProgress,
    TResult Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unAuthenticated,
    TResult Function(User user)? authenticated,
    TResult Function(String message)? error,
    TResult Function()? inProgress,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_ErrorAuthState value) error,
    required TResult Function(_InProgressAuthState value) inProgress,
    required TResult Function(_InSuccessAuthState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_InProgressAuthState value)? inProgress,
    TResult Function(_InSuccessAuthState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_ErrorAuthState value)? error,
    TResult Function(_InProgressAuthState value)? inProgress,
    TResult Function(_InSuccessAuthState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _InSuccessAuthState extends AuthState {
  factory _InSuccessAuthState() = _$_InSuccessAuthState;
  _InSuccessAuthState._() : super._();
}
