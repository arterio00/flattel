import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flattel/data/model/api_ad.dart';

import '/data/model/api_user.dart';

class FireStore {
  final _response = FirebaseFirestore.instance;

  Future<ApiUser> getUser({
    required String uidUser,
  }) async {
    final result = await _response.collection('users').doc(uidUser).get();
    final data = result.data() ?? {};
    return ApiUser.fromJson(data);
  }

  Future<void> sendUser({
    required ApiUser user,
  }) async {
    final path = _response.collection('users').doc(user.uid);

    await path.set(user.toJson());
  }

  Future<bool> checkUserPhone(String phone) async {
    final checkPhone = await _response
        .collection('users')
        .where(
          "phone",
          isEqualTo: phone,
        )
        .get();
    print(checkPhone.docs.length);
    return checkPhone.docs.length == 1;
  }

  Future<bool> checkUserEmail(String email) async {
    final checkEmail = await _response
        .collection('users')
        .where(
          "email",
          isEqualTo: email,
        )
        .get();
    return checkEmail.docs.length == 1;
  }

  Future getDropDownList() async {
    final result = await _response
        .collection('dropdown_lists_ad')
        .doc('2mgtO8WWdQIumXw3G9Fj')
        .get();
    return result;
  }

  Stream<List<ApiAd>> fetchAds() async* {
    final result = _response.collection('ads').snapshots();
    yield* result.map(
        (event) => event.docs.map((e) => ApiAd.fromJson(e.data())).toList());
  }
}
