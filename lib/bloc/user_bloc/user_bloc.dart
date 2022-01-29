import 'dart:async';

import 'package:flattel/bloc/app_bloc/app_bloc.dart';
import 'package:flattel/bloc/entities/my_user.dart';
import 'package:flattel/data/repository/firestore.dart';
import 'package:flattel/bloc/entities/mapper/user_mapper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(this._firestore, this.appBloc) : super(const _Loading()) {
    on<_FetchUserFromFirestore>(_getUser);
    appBloc.state.whenOrNull(
      authenticated: (user) {
        if (user != null) {
          add(UserEvent.fetchUserFromFirestore(user.uid));
        }
      },
    );
  }

  final AppBloc appBloc;

  final FireStore _firestore;

  void _getUser(_FetchUserFromFirestore event, Emitter<UserState> emit) async {
    final myUser = await _fetchUser(event.uid);
    print(myUser);
    emit(UserState.success(myUser));
  }

  Future<bool> checkUserPhone(String phone) async {
    return await _firestore.checkUserPhone(phone);
  }

  Future<bool> checkUserEmail(String email) async {
    return await _firestore.checkUserEmail(email);
  }

  Future<void> sendUser(MyUser myUser) async {
    await _firestore.sendUser(user: UserMapper.toApiUser(myUser));
  }

  Future<MyUser> _fetchUser(String uidUser) async {
    return UserMapper.toMyUser(await _firestore.getUser(uidUser: uidUser));
  }
}
