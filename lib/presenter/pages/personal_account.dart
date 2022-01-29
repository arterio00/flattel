import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '/presenter/widgets/home/map.dart';

class PersonalAccount extends StatelessWidget {
  const PersonalAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoButton(
          onPressed: () async {
            var a = await FirebaseFirestore.instance
                .collection('users')
                .where(
                  "Email",
                  isEqualTo: 'test@gmail.com',
                )
                .get();

            final path = await FirebaseFirestore.instance
                .collection('users')
                .doc('model.uid')
                .get();
            String b = path.get('phone');
            print(b);
          },
          child: Container()),
    );
  }
}
