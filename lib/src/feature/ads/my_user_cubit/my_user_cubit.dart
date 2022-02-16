import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flattel/src/feature/authenticate/auth_bloc/auth_bloc.dart';
import 'package:flattel/src/feature/authenticate/entities/my_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../logic/firestore.dart';

part 'my_user_state.dart';
part 'my_user_cubit.freezed.dart';

class MyUserCubit extends Cubit<MyUserState> {
  MyUserCubit(this._fireStore, this._authBloc)
      : super(const MyUserState.inProgress()) {
    getMyUser();
  }
  final FireStore _fireStore;
  final AuthBloc _authBloc;

  void sendMyUser(MyUser myUser) {
    _fireStore.sendUser(user: myUser);
  }

  void getMyUser() async {
    final myUser = await _fireStore.getUser(uidUser: _authBloc.state.user!.uid);
    print(myUser);

    emit(MyUserState.success(myUser));
  }

  Future<bool> checkUserEmail(String email) async {
    return await _fireStore.checkUserEmail(email);
  }

  Future<bool> checkUserPhone(String phone) async {
    return await _fireStore.checkUserPhone(phone);
  }
}
