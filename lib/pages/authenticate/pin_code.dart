import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:swipe/pages/home/home.dart';
import 'package:swipe/themes/logo.dart';
import 'package:swipe/themes/colors.dart';

class PinCode extends StatelessWidget {
  final String _phone;
  const PinCode(
    this._phone, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _code = '';
    User? user;

    Future<void> signInPhone() async {
      FirebaseAuth _auth = FirebaseAuth.instance;

      if (kIsWeb) {
        ConfirmationResult confirmationResult =
            await _auth.signInWithPhoneNumber(_phone);
        UserCredential result = await confirmationResult.confirm(_code);
        user = result.user;
      } else {
        _auth.verifyPhoneNumber(
          phoneNumber: _phone,
          timeout: const Duration(seconds: 60),
          verificationCompleted: (PhoneAuthCredential credential) async {
            // ANDROID ONLY!
            // Sign the user in (or link) with the auto-generated credential
            UserCredential result =
                await _auth.signInWithCredential(credential);
            user = result.user;
          },
          verificationFailed: (FirebaseAuthException e) {
            print(e);
          },
          codeSent: (String verificationId, int? resendToken) async {
            String smsCode = '$_code';

            // Create a PhoneAuthCredential with the code
            PhoneAuthCredential credential = PhoneAuthProvider.credential(
                verificationId: verificationId, smsCode: smsCode);

            // Sign the user in (or link) with the credential
            UserCredential result =
                await _auth.signInWithCredential(credential);
            user = result.user;
          },
          codeAutoRetrievalTimeout: (String verificationId) {
            verificationId = verificationId;
            print(verificationId);
            print("Timout");
          },
        );
      }
    }

    return Scaffold(
      //backgroundColor: Theme.of(context).backgroundColor,
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
            const SizedBox(height: 90),
            const Logo(),
            const SizedBox(
              height: 39.58,
            ),
            const SizedBox(
              width: 205,
              height: 51,
              child: Text(
                'Введите код который мы отправили на указаный вами номер телефона',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 253,
              child: PinCodeTextField(
                autoFocus: true,
                appContext: context,
                length: 6,
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 40.6,
                  fontWeight: FontWeight.w400,
                ),
                onChanged: (context) {
                  signInPhone();
                },
                onCompleted: (context) {
                  _code = context;
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () async {
                print('$_code');
                // AuthCredential credential = PhoneAuthProvider.credential(
                //     verificationId: verificationId, smsCode: _code);

                if (user != null) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Home(
                                user: user,
                              )));
                } else {
                  print("Error");
                }
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
          ],
        ),
      ),
    );
  }
}
