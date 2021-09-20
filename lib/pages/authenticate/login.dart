import 'package:flutter/material.dart';
import 'package:swipe/pages/authenticate/registration.dart';
import 'package:swipe/pages/authenticate/routing.dart';
import 'package:swipe/pages/authenticate/sign_in.dart';
import 'package:swipe/themes/logo.dart';
import 'package:swipe/themes/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              MyColor.color1,
              MyColor.color2,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: (MediaQuery.of(context).size.height) / 5,
            ),
            const Logo(),
            Container(
              height: 39.58,
            ),
            const SizedBox(
              width: 205,
              height: 51,
              child: Text(
                'Открой доступ к самой полной базе рынка квартир в Сочи!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(Routing.createRoute(const SignInScreen()));
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(86, 195, 133, 1),
                onPrimary: Colors.white,
                fixedSize: const Size(253, 50),
                onSurface: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              child: const Text(
                'Войти',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Opacity(
                opacity: 0.6,
                child: Text(
                  'Впервые у нас?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(Routing.createRoute(const Registration()));
                },
                child: const Text(
                  'Регистрация',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
