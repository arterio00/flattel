import 'package:flattel/bloc/entities/my_user.dart';
import 'package:flutter/material.dart';
import 'package:phone_form_field/phone_form_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/bloc/user_bloc/user_bloc.dart';
import '/generated/l10n.dart';
import '/presenter/themes/colors.dart';
import '/presenter/themes/logo.dart';
import '/bloc/auth_cubit/auth_cubit.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  PhoneController? _phoneController;
  @override
  void initState() {
    _phoneController = PhoneController(null);
    super.initState();
  }

  @override
  void dispose() {
    _phoneController?.dispose();
    super.dispose();
  }
  // bool _trySubmit() {
  //   bool isValid = true;
  //   FocusScope.of(context).unfocus();
  //   _phoneKey.currentState?.save();

  //   if (_phone == null || _phone!.length < 6) {
  //     isValid = false;
  //     ScaffoldMessenger.of(context).hideCurrentSnackBar();
  //     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //         content: Text(
  //       'Wrong phone',
  //       textAlign: TextAlign.center,
  //     )));
  //   }
  //   return isValid;
  // }

  void onPressed() async {
    final phone = _phoneController?.value;

    if (phone == null) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
        S.of(context).snackbarNoPhone,
        textAlign: TextAlign.center,
      )));
      return;
    }
    print(phone.international);
    final store = context.read<UserBloc>();
    bool checker = await store.checkUserPhone(phone.international);
    if (!checker) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(S.of(context).snackbarIsNotPhoneData),
        action: SnackBarAction(
            label: S.of(context).registrationHintText,
            onPressed: () => Navigator.of(context).pushNamed('/registration')),
      ));
      return;
    }

    final auth = context.read<AuthCubit>();

    auth.signIn(
        MyUser(
            uid: null,
            email: null,
            avatar: null,
            firstName: null,
            secondName: null,
            phone: phone.international),
        context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
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
              child: PhoneFormField(
                defaultCountry: 'UA',
                controller: _phoneController,
                decoration: InputDecoration(
                    hintText: S.of(context).phoneHintText,
                    hintStyle: const TextStyle(color: Colors.white),
                    hoverColor: Colors.white,
                    border: InputBorder.none),
                cursorColor: Colors.white,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(86, 195, 133, 1),
                onPrimary: Colors.white,
                fixedSize: const Size(253, 50),
                onSurface: Colors.white,
              ),
              child: Text(
                S.of(context).next,
                style: const TextStyle(
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
