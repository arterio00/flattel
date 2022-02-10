import 'package:freezed_annotation/freezed_annotation.dart';
part 'my_user.freezed.dart';
part 'my_user.g.dart';

@freezed
class MyUser with _$MyUser {
  const factory MyUser({
    required String uid,
    required String email,
    required String? avatar,
    required String firstName,
    required String secondName,
    required String phone,
  }) = _MyUser;
  factory MyUser.fromJson(Map<String, dynamic> json) => _$MyUserFromJson(json);
}
