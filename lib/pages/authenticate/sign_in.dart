import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:swipe/pages/authenticate/routing.dart';
import 'package:swipe/pages/home/home.dart';
import 'package:swipe/themes/logo.dart';
import 'package:swipe/themes/colors.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _phoneKey = GlobalKey<FormState>();
  String? _phone;
  String _code = '';

  void _trySubmit() {
    final isValid = _phoneKey.currentState?.validate();
    FocusScope.of(context).unfocus();
    if (isValid!) {
      try {
        _phoneKey.currentState?.save();
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text(
          'Wrong phone',
          textAlign: TextAlign.center,
        )));
      }
      if (_phone!.length <= 4) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text(
          'Wrong phone',
          textAlign: TextAlign.center,
        )));
      }
    }
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
      'Wrong phone',
      textAlign: TextAlign.center,
    )));
  }

  Future<void> signInPhone(String _phone) async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    User? _user;
    if (kIsWeb) {
      ConfirmationResult? confirmationResult =
          await _auth.signInWithPhoneNumber(_phone);
      UserCredential userCredential = await confirmationResult.confirm(_code);
      _user = userCredential.user;
    } else {
      _auth.verifyPhoneNumber(
        phoneNumber: _phone,
        timeout: const Duration(seconds: 60),
        verificationCompleted: (PhoneAuthCredential credential) async {
          Navigator.of(context).pop();
          // ANDROID ONLY!
          // Sign the user in (or link) with the auto-generated credential
          UserCredential result = await _auth.signInWithCredential(credential);
          _user = result.user;
          if (_user != null) {
            Navigator.of(context).push(Routing.createRoute(Home(
              user: _user,
            )));
          } else {
            print("Error");
          }
        },
        verificationFailed: (FirebaseAuthException e) {
          if (e.code == 'invalid-phone-number') {
            print('The provided phone number is not valid.');
          }
        },
        codeSent: (String verificationId, int? resendToken) {
          showDialog(
              context: context,
              builder: (BuildContext context) => Scaffold(
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
                              onChanged: (value) {
                                _code = value;
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              PhoneAuthCredential credential =
                                  PhoneAuthProvider.credential(
                                      verificationId: verificationId,
                                      smsCode: _code);

                              // Sign the user in (or link) with the credential
                              UserCredential result =
                                  await _auth.signInWithCredential(credential);

                              User? user = result.user;
                              // Navigator.of(context).push(Routing.createRoute(Home(
                              //   user: user,
                              // )));
                              if (user != null) {
                                Navigator.of(context)
                                    .push(Routing.createRoute(Home(
                                  user: user,
                                )));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Wrong pin-code')));
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
                  ));
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          verificationId = verificationId;
          print(verificationId);
          print("Timout");
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
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
            SizedBox(
              height: (MediaQuery.of(context).size.height) / 5,
            ),
            const Logo(),
            const SizedBox(
              height: 72,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              width: 253,
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  Color(0x2527AE63),
                  Color(0x2527AE9E),
                ]),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Form(
                key: _phoneKey,
                child: PhoneFormField(
                  decoration: const InputDecoration(
                      hintText: 'Phone',
                      hintStyle: TextStyle(color: Colors.white),
                      hoverColor: Colors.white,
                      border: InputBorder.none),
                  selectorConfig: const SelectorConfigDialog(),
                  cursorColor: Colors.white,
                  inputTextStyle: const TextStyle(color: Colors.white),
                  onSaved: (val) {
                    _phone = val.international;
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                _trySubmit();
                print(_phone);
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
