import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_user.freezed.dart';
part 'api_user.g.dart';

@freezed
class ApiUser with _$ApiUser {
  const factory ApiUser(
      {required dynamic uid,
      required dynamic email,
      required dynamic avatar,
      required dynamic firstName,
      required dynamic secondName,
      required dynamic phone}) = _ApiUser;

  factory ApiUser.fromJson(Map<String, dynamic> json) =>
      _$ApiUserFromJson(json);
}
