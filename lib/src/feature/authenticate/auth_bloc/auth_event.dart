part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signIn(BuildContext context, MyUser myUser) =
      _AuthSignIn;
  const factory AuthEvent.registration(BuildContext context, MyUser myUser) =
      _AuthRegistration;
  const factory AuthEvent.logOut() = _AuthLogout;
  const factory AuthEvent.userChanged(User? user) = _AuthUserChanged;
}
