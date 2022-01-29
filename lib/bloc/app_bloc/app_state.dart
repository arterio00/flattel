part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.unAuthenticated() = _UnAuthenticated;
  const factory AppState.authenticated(User? user) = _Authenticated;
}
