import 'package:bloc/bloc.dart';
import 'package:flattel/bloc/entities/my_user.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/repository/fire_auth.dart';

class AuthCubit extends Cubit<MyUser?> {
  AuthCubit(
    this._auth,
  ) : super(null);
  final FireAuth _auth;

  void signIn(MyUser user, BuildContext context) {
    emit(user);
    _auth.signInPhone(context);
  }
}
