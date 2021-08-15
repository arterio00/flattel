import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:swipe/pages/authenticate/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:swipe/pages/authenticate/pin_code.dart';
import 'package:swipe/pages/authenticate/registration.dart';
import 'package:swipe/pages/authenticate/sign_in.dart';
import 'package:swipe/pages/home/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  // Create the initialization Future outside of `build`:
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  /// The future is part of the state of our widget. We should not call `initializeApp`
  /// directly inside [build].
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        return MaterialApp(
            routes: {
              //  '/login': (context) => LoginScreen(),
              '/sign_in': (context) => const SignInScreen(),
              '/pin_code': (context) => PinCode(),
              '/registration': (context) => const Registration(),
              '/home': (context) => const Home(),
            },
            theme: ThemeData(
              fontFamily: 'Montserrat',
            ),
            home: StreamBuilder(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasData) {
                  return const Home();
                }
                return const LoginScreen();
              },
            ));
      },
    );
  }
}
