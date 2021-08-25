import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:swipe/pages/authenticate/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:swipe/pages/authenticate/registration.dart';
import 'package:swipe/pages/authenticate/sign_in.dart';
import 'package:swipe/pages/home/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          //  '/login': (context) => LoginScreen(),
          '/sign_in': (context) => const SignInScreen(),
          '/registration': (context) => const Registration(),
        },
        theme: ThemeData(
          fontFamily: 'Montserrat',
        ),
        home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
            User? user = snapshot.data;
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (user != null) {
              return Home(user: user);
            }
            return const LoginScreen();
          },
        ));
  }
}
