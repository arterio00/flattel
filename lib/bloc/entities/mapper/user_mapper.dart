import '/bloc/entities/my_user.dart';
import '/data/model/api_user.dart';

abstract class UserMapper {
  static ApiUser toApiUser(MyUser user) {
    return ApiUser(
      uid: user.uid,
      email: user.avatar,
      avatar: user.avatar,
      firstName: user.firstName,
      secondName: user.secondName,
      phone: user.phone,
    );
  }

  static MyUser toMyUser(ApiUser user) {
    return MyUser(
      uid: user.uid,
      email: user.email,
      avatar: user.avatar,
      firstName: user.firstName,
      secondName: user.secondName,
      phone: user.phone,
    );
  }
}
