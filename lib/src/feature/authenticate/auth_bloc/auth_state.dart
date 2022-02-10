part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  AuthState._();
  User? get user => whenOrNull(
        authenticated: (user) => user,
      );
  bool get inProgress => maybeMap(
        orElse: () => true,
        unAuthenticated: (value) => false,
        authenticated: (value) => false,
      );
  factory AuthState.unAuthenticated() = _UnAuthenticated;
  factory AuthState.authenticated(User user) = _Authenticated;
  factory AuthState.error({
    @Default('Произошла ошибка') String message,
  }) = _ErrorAuthState;
  factory AuthState.inProgress() = _InProgressAuthState;
  factory AuthState.success() = _InSuccessAuthState;
}
