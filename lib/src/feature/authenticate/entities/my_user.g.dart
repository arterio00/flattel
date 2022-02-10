// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyUser _$$_MyUserFromJson(Map json) => _$_MyUser(
      uid: json['uid'] as String,
      email: json['email'] as String,
      avatar: json['avatar'] as String?,
      firstName: json['firstName'] as String,
      secondName: json['secondName'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$$_MyUserToJson(_$_MyUser instance) => <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'avatar': instance.avatar,
      'firstName': instance.firstName,
      'secondName': instance.secondName,
      'phone': instance.phone,
    };
