import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:swipe/pages/home/home.dart';
import 'package:swipe/themes/logo.dart';
import 'package:swipe/themes/colors.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String _phone = '';

    Future<void> signInPhone() async {
      FirebaseAuth _auth = FirebaseAuth.instance;
      String _code = '';
      User? _user;
      late ConfirmationResult confirmationResult;

      CallbackAction(onInvoke: (_user) {
        if (_user != null) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Home(
                        user: _user as User,
                      )));
        }
      });
      Widget pinCode(
          {String verificationId = '',
          ConfirmationResult? confirmationResult}) {
        return Scaffold(
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
                    onChanged: (context) {},
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
                    if (kIsWeb) {
                      UserCredential result =
                          await confirmationResult!.confirm(_code);
                      _user = result.user;
                    } else {
                      AuthCredential credential = PhoneAuthProvider.credential(
                          verificationId: verificationId, smsCode: _code);
                      UserCredential result =
                          await _auth.signInWithCredential(credential);
                      _user = result.user;
                    }
                    if (_user != null) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Home(
                                    user: _user,
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

      if (kIsWeb) {
        ConfirmationResult? confirmationResult =
            await _auth.signInWithPhoneNumber(_phone);
        showDialog(
            context: context,
            builder: (BuildContext context) =>
                pinCode(confirmationResult: confirmationResult));
      } else {
        _auth.verifyPhoneNumber(
          phoneNumber: _phone,
          timeout: const Duration(seconds: 60),
          verificationCompleted: (PhoneAuthCredential credential) async {
            // ANDROID ONLY!
            // Sign the user in (or link) with the auto-generated credential
            UserCredential result =
                await _auth.signInWithCredential(credential);
            _user = result.user;
          },
          verificationFailed: (FirebaseAuthException e) {
            print(e);
          },
          codeSent: (String verificationId, int? resendToken) async {
            showDialog(
                context: context,
                builder: (BuildContext context) =>
                    pinCode(verificationId: verificationId));
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
            Container(height: 90),
            const Logo(),
            const SizedBox(
              height: 72,
            ),
            SizedBox(
              width: 253,
              child: PhoneFormField(
                  decoration: const InputDecoration(
                      hintStyle: TextStyle(color: Colors.white),
                      hoverColor: Colors.white),
                  selectorConfig: const SelectorConfigDialog(),
                  cursorColor: Colors.white,
                  inputTextStyle: const TextStyle(color: Colors.white),
                  autofocus: true,
                  onChanged: (val) {
                    print(val?.international);
                    _phone = '${val?.international}';
                  }),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                print('$_phone');
                signInPhone();
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
                'Далее',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
