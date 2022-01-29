part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.logOut() = _AppLogoutRequested;
  const factory AppEvent.userChanged(User? user) = _AppUserChanged;
}
