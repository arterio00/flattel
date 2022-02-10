import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flattel/generated/l10n.dart';
import 'package:flattel/src/feature/authenticate/entities/my_user.dart';
import 'package:flattel/src/feature/authenticate/logic/fire_auth.dart';
import 'package:flutter/widgets.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../ads/logic/firestore.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._auth, this._firestore)
      : super(_auth.getUser != null
            ? AuthState.authenticated(_auth.getUser!)
            : AuthState.unAuthenticated()) {
    on<_AuthUserChanged>(_onUserChanged);
    on<_AuthLogout>(_onLogout);
    on<_AuthSignIn>(_signIn);
    on<_AuthRegistration>(_registration);
    _userSubscription = _auth.stateUser().listen((user) {
      add(_AuthUserChanged(user));
    });
  }
  final FireStore _firestore;
  final FireAuth _auth;
  late final StreamSubscription<User?> _userSubscription;

  void _onUserChanged(_AuthUserChanged event, Emitter<AuthState> emit) {
    emit(event.user == null
        ? AuthState.unAuthenticated()
        : AuthState.authenticated(event.user!));
  }

  void _signIn(_AuthSignIn event, Emitter<AuthState> emit) async {
    try {
      await _auth.signInPhone(event.context, event.myUser);
    } on FormatException {
      emit(AuthState.error(message: 'Нельзя залогиниться - нет интернета'));
    } on Object catch (error, stackTrace) {
      emit(AuthState.error(message: 'Ошибка аутентификации'));
      rethrow;
    }
  }

  void _registration(_AuthRegistration event, Emitter<AuthState> emit) async {
    final RegExp emailRegExp = RegExp(
      r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
    );
    if (emailRegExp.hasMatch(event.myUser.email)) {
      emit(AuthState.error(message: 'Не правильный email'));
      return;
    }
    if (event.myUser.phone == '' ||
        event.myUser.firstName == '' ||
        event.myUser.secondName == '') {
      emit(AuthState.error(message: 'Поля не должны быть пустыми'));
      return;
    }
    if (await _firestore.checkUserPhone(event.myUser.phone) &&
        await _firestore.checkUserEmail(event.myUser.email)) {
      emit(AuthState.error(message: S.of(event.context).snackbarIsPhoneData));
      return;
    }
    try {
      emit(AuthState.inProgress());
      await _auth.signInPhone(event.context, event.myUser);
      final String uidUser = state.user?.uid ?? '';
      _firestore.sendUser(user: event.myUser.copyWith(uid: uidUser));
      emit(AuthState.success());
    } on FormatException {
      emit(AuthState.error(message: 'Нельзя залогиниться - нет интернета'));
    } on Object catch (error, stackTrace) {
      emit(AuthState.error(message: 'Ошибка аутентификации'));
      rethrow;
    }
  }

  void _onLogout(_AuthLogout event, Emitter<AuthState> emit) {
    unawaited(_auth.logOut());
  }

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
