part of 'my_user_cubit.dart';

@freezed
class MyUserState with _$MyUserState {
  const factory MyUserState.inProgress() = _InProgress;
  const factory MyUserState.success(MyUser user) = _InSuccess;
}
