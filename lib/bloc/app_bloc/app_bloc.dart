import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flattel/data/repository/fire_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc(FireAuth auth)
      : _auth = auth,
        super(const AppState.unAuthenticated()) {
    on<_AppUserChanged>(_onUserChanged);
    on<_AppLogoutRequested>(_onLogout);
    _userSubscription = auth.stateUser().listen((user) {
      add(_AppUserChanged(user));
    });
  }
  final FireAuth _auth;
  late final StreamSubscription<User?> _userSubscription;

  void _onUserChanged(_AppUserChanged event, Emitter<AppState> emit) {
    emit(event.user == null
        ? const AppState.unAuthenticated()
        : AppState.authenticated(event.user));
  }

  void _onLogout(_AppLogoutRequested event, Emitter<AppState> emit) {
    unawaited(_auth.logOut());
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
