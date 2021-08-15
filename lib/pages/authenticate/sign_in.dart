import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:swipe/pages/home/home.dart';
import 'package:swipe/themes/logo.dart';
import 'package:swipe/themes/colors.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String _phone = '';
  String _code = '';
  //Place A

  Future<void> signInPhone(String phoneNumber) async {
    _auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      timeout: const Duration(seconds: 60),
      verificationCompleted: (PhoneAuthCredential credential) async {
        // ANDROID ONLY!
        // Sign the user in (or link) with the auto-generated credential
        UserCredential result = await _auth.signInWithCredential(credential);
        User? user = result.user;
        if (user != null) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Home(user: user)));
        } else {
          print("Error");
        }
      },
      verificationFailed: (FirebaseAuthException e) {
        print(e);
      },
      codeSent: (String verificationId, int? resendToken) async {
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
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
                      const SizedBox(height: 166),
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
                      PinCodeTextField(
                        autoFocus: true,
                        appContext: context,
                        length: 6,
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        onChanged: (context) {
                          _code = context;
                        },
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          print('$_code');
                          AuthCredential credential =
                              PhoneAuthProvider.credential(
                                  verificationId: verificationId,
                                  smsCode: _code);

                          UserCredential result =
                              await _auth.signInWithCredential(credential);

                          User? user = result.user;

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
            });
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        verificationId = verificationId;
        print(verificationId);
        print("Timout");
      },
    );
  }

  Future<void> signInPhoneWeb() async {
    ConfirmationResult confirmationResult =
        await _auth.signInWithPhoneNumber(_phone);
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
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
                  const SizedBox(height: 166),
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
                  PinCodeTextField(
                    autoFocus: true,
                    appContext: context,
                    length: 6,
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                    onChanged: (context) {
                      _code = context;
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      print('$_code');
                      UserCredential result =
                          await confirmationResult.confirm(_code);

                      User? user = result.user;

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
        });
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
            const SizedBox(height: 166),
            const Logo(),
            const SizedBox(
              height: 72,
            ),
            InternationalPhoneNumberInput(
                selectorConfig: const SelectorConfig(leadingPadding: 20),
                autoFocusSearch: true,
                cursorColor: Colors.white,
                autoFocus: true,
                textStyle: const TextStyle(color: Colors.white),
                selectorTextStyle: const TextStyle(color: Colors.grey),
                onInputChanged: (val) {
                  setState(() {
                    _phone = '$val';
                  });
                }),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                print('$_phone');
                if (!kIsWeb) {
                  signInPhone(_phone);
                } else {
                  signInPhoneWeb();
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
