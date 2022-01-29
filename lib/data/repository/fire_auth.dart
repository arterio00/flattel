import 'package:firebase_auth/firebase_auth.dart';
import 'package:flattel/bloc/auth_cubit/auth_cubit.dart';
import 'package:flattel/bloc/entities/my_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';

import '/generated/l10n.dart';
import '../../bloc/user_bloc/user_bloc.dart';
import '/presenter/themes/colors.dart';
import '/presenter/themes/logo.dart';
import '/presenter/themes/routing.dart';

class FireAuth {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<User?> stateUser() async* {
    yield* _auth.authStateChanges();
  }

  Future<void>? logOut() {
    _auth.signOut();
  }

  Future<void> signInPhone(BuildContext context) async {
    late final String _code;

    MyUser? user = context.read<AuthCubit>().state;
    late final String phone = user!.phone!;

    void sendUser() async {
      if (user != null && user?.email != null) {
        print(user);
        await context.read<UserBloc>().sendUser(user!);
      }
    }

    try {
      if (kIsWeb) {
        ConfirmationResult? confirmationResult =
            await _auth.signInWithPhoneNumber(phone);

        await Navigator.of(context).push(Routing.createRoute(_PinCode(
          onSaved: (value) {
            _code = value;
          },
        )));
        UserCredential userCredential = await confirmationResult.confirm(_code);
        final userUid = userCredential.user?.uid;

        user = user?.copyWith(uid: userUid);
        sendUser();
        Navigator.of(context)
            .pushNamedAndRemoveUntil('/home', (route) => false);
      } else {
        _auth.verifyPhoneNumber(
          phoneNumber: phone,
          timeout: const Duration(seconds: 120),
          verificationCompleted: (PhoneAuthCredential credential) async {
            // ANDROID ONLY!
            // Sign the user in (or link) with the auto-generated credential
            UserCredential result =
                await _auth.signInWithCredential(credential);
            user = user?.copyWith(uid: result.user?.uid);
            sendUser();
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/home', (route) => false);
          },
          verificationFailed: (FirebaseAuthException e) {
            if (e.code == 'invalid-phone-number') {
              print('The provided phone number is not valid.');
            }
          },
          codeSent: (String verificationId, int? resendToken) async {
            await Navigator.of(context).push(Routing.createRoute(_PinCode(
              onSaved: (value) {
                _code = value;
              },
            )));
            print(_code);
            PhoneAuthCredential credential = PhoneAuthProvider.credential(
                verificationId: verificationId, smsCode: _code);

            // Sign the user in (or link) with the credential
            UserCredential result =
                await _auth.signInWithCredential(credential);
            user = user?.copyWith(uid: result.user?.uid);
            sendUser();
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/home', (route) => false);
          },
          codeAutoRetrievalTimeout: (String verificationId) {
            verificationId = verificationId;
            print(verificationId);
            print("Timout");
          },
        );
      }
    } on PlatformException catch (e) {
      print('Check your credentinal');
    }
    await context.read<AuthCubit>().close();
  }
}

class _PinCode extends StatelessWidget {
  const _PinCode({
    Key? key,
    required this.onSaved,
  }) : super(key: key);
  final void Function(String)? onSaved;
  @override
  Widget build(BuildContext context) {
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
            SizedBox(
              height: (MediaQuery.of(context).size.height) / 5,
            ),
            const Logo(),
            const SizedBox(
              height: 39.58,
            ),
            SizedBox(
              width: 205,
              height: 51,
              child: Text(
                S.of(context).pinCodeText,
                textAlign: TextAlign.center,
                style: const TextStyle(
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
                  onChanged: (value) {},
                  onCompleted: onSaved),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(86, 195, 133, 1),
                onPrimary: Colors.white,
                fixedSize: const Size(253, 50),
                onSurface: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              child: Text(
                S.of(context).loginButton,
                style: const TextStyle(
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
