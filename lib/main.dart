import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swipe/pages/authenticate/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:swipe/pages/home/home.dart';
import 'package:swipe/pages/home/new_ad.dart';
import 'package:swipe/pages/home/personal_account.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          //Color(0xff4BC19D),
          fontFamily: 'Montserrat',
        ),
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasData) {
              return Home(user: snapshot.data);
              //return NewAd();
              //return PersonalAccount();
            }
            return const LoginScreen();
          },
        ));
  }
}
