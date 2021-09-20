import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:swipe/pages/authenticate/pin_code.dart';
import 'package:swipe/pages/authenticate/routing.dart';
import 'package:swipe/pages/home/home.dart';
import 'package:swipe/themes/logo.dart';
import 'package:swipe/themes/colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final _formKey = GlobalKey<FormState>();
  String? _firstName;
  String? _secondName;
  String? _phone;
  String? _email;
  String? _code;

  void _trySubmit() {
    final isValid = _formKey.currentState?.validate();
    FocusScope.of(context).unfocus();
    if (isValid!) {
      try {
        _formKey.currentState?.save();
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text(
          'Wrong  phone',
          textAlign: TextAlign.center,
        )));
      }
      if (_phone!.isEmpty || _phone!.length <= 4) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text(
          'Wrong phone',
          textAlign: TextAlign.center,
        )));
      }
    }
  }

  Future<void> signInPhone(String _phone) async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    User? _user;

    try {
      if (kIsWeb) {
        ConfirmationResult? confirmationResult =
            await _auth.signInWithPhoneNumber(_phone);
        String? code = await _code;
        UserCredential userCredential = await confirmationResult.confirm(code!);
        _user = userCredential.user;
      } else {
        _auth.verifyPhoneNumber(
          phoneNumber: _phone,
          timeout: const Duration(seconds: 120),
          verificationCompleted: (PhoneAuthCredential credential) async {
            Navigator.of(context).pop();
            // ANDROID ONLY!
            // Sign the user in (or link) with the auto-generated credential
            UserCredential result =
                await _auth.signInWithCredential(credential);
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
          codeSent: (String verificationId, int? resendToken) async {
            await Navigator.of(context).push(Routing.createRoute(PinCode(
              onSaved: (value) {
                _code = value;
              },
            )));
            print(_code);
            PhoneAuthCredential credential = PhoneAuthProvider.credential(
                verificationId: verificationId, smsCode: _code!);

            // Sign the user in (or link) with the credential
            UserCredential _result =
                await _auth.signInWithCredential(credential);

            _user = _result.user;
            // Navigator.of(context).push(Routing.createRoute(Home(
            //   user: user,
            // )));
            if (_user != null) {
              Navigator.of(context).pushAndRemoveUntil(
                  (Routing.createRoute(Home(
                    user: _user,
                  ))),
                  (route) => false);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Wrong pin-code')));
              print("Error");
            }
          },
          codeAutoRetrievalTimeout: (String verificationId) {
            verificationId = verificationId;
            print(verificationId);
            print("Timout");
          },
        );
      }

      FirebaseFirestore.instance.collection('users').doc(_user!.uid).set({
        'First Name': _firstName,
        'Second Name': _secondName,
        'Phone': _phone,
        'Email': _email,
      });
    } on PlatformException catch (e) {
      print('Check your credentinal');
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
              height: size.height * 0.2,
            ),
            const Logo(),
            SizedBox(
              height: size.height * 0.05,
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
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty || double.tryParse(value) != null) {
                          return 'Please enter a valid First name';
                        }
                        return null;
                      },
                      autofocus: true,
                      textInputAction: TextInputAction.next,
                      onSaved: (value) {
                        _firstName = value;
                      },
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                      cursorColor: Colors.white,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 0, top: 10),
                        isCollapsed: true,
                        hintText: 'First name',
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                        constraints: BoxConstraints(minHeight: 44),
                      ),
                    ),
                    TextFormField(
                      onSaved: (value) {
                        _secondName = value;
                      },
                      validator: (value) {
                        if (value!.isEmpty || double.tryParse(value) != null) {
                          return 'Please enter a valid Second name';
                        }
                        return null;
                      },
                      textInputAction: TextInputAction.next,
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                      cursorColor: Colors.white,
                      decoration: const InputDecoration(
                        constraints: BoxConstraints(minHeight: 40),
                        contentPadding: EdgeInsets.only(bottom: 0, top: 10),
                        isCollapsed: true,
                        hintText: 'Second name',
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                      ),
                    ),
                    TextFormField(
                      onSaved: (value) {
                        _email = value;
                      },
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value == null || !value.contains('@')) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                      cursorColor: Colors.white,
                      decoration: const InputDecoration(
                        constraints: BoxConstraints(minHeight: 40),
                        contentPadding: EdgeInsets.only(bottom: 0, top: 10),
                        isCollapsed: true,
                        hintText: 'Email address',
                        hintStyle: TextStyle(color: Colors.white),
                        border: InputBorder.none,
                      ),
                    ),
                    PhoneFormField(
                      onSaved: (value) {
                        _phone = value.international;
                      },
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(bottom: 0, top: 10),
                          constraints: BoxConstraints(minHeight: 40),
                          isCollapsed: true,
                          hintText: 'Phone',
                          hintStyle: TextStyle(color: Colors.white),
                          border: InputBorder.none),
                      selectorConfig: const SelectorConfigDialog(),
                      cursorColor: Colors.white,
                      inputTextStyle: const TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            ElevatedButton(
              onPressed: () {
                _trySubmit();
                print(_phone);

                signInPhone(_phone!);
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
                'Регистрация',
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
