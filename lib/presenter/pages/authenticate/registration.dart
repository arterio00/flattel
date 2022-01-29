import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:phone_form_field/phone_form_field.dart';

import '/bloc/auth_cubit/auth_cubit.dart';
import '/bloc/user_bloc/user_bloc.dart';
import '/bloc/entities/my_user.dart';
import '/generated/l10n.dart';
import '/presenter/themes/logo.dart';
import '/presenter/themes/colors.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  PhoneController? _phoneController;
  TextEditingController? _emailController;
  TextEditingController? _firstNameController;
  TextEditingController? _secondNameController;

  @override
  void initState() {
    _phoneController = PhoneController(null);
    _emailController = TextEditingController();
    _firstNameController = TextEditingController();
    _secondNameController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController?.dispose();
    _firstNameController?.dispose();
    _phoneController?.dispose();
    _secondNameController?.dispose();
    super.dispose();
  }

  void onPressed() async {
    final String? firstName = _firstNameController?.text;
    final String? secondName = _secondNameController?.text;
    final String? phone = _phoneController?.value?.international;
    final String? email = _emailController?.text;
    final RegExp emailRegExp = RegExp(
      r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
    );

    if (!emailRegExp.hasMatch(email ?? '')) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(S.of(context).notCorrectEmail)));
      return;
    }
    if (phone == null ||
        firstName == null ||
        secondName == null ||
        email == null) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(S.of(context).correctIsDataForm)));
      return;
    }
    final store = context.read<UserBloc>();

    if (await store.checkUserPhone(phone) &&
        await store.checkUserEmail(email)) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(S.of(context).snackbarIsPhoneData)));
      return;
    }

    final auth = context.read<AuthCubit>();

    final myUser = MyUser(
      uid: null,
      email: email,
      avatar: null,
      firstName: firstName,
      secondName: secondName,
      phone: phone,
    );
    auth.signIn(myUser, context);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
              child: Column(
                children: [
                  TextFormField(
                    controller: _firstNameController,
                    textInputAction: TextInputAction.next,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(bottom: 0, top: 10),
                      isCollapsed: true,
                      hintText: S.of(context).firstName,
                      hintStyle: const TextStyle(color: Colors.white),
                      border: InputBorder.none,
                      constraints: const BoxConstraints(minHeight: 44),
                    ),
                  ),
                  TextFormField(
                    controller: _secondNameController,
                    validator: (value) {
                      if (value!.isEmpty || double.tryParse(value) != null) {
                        return S.of(context).emptyField;
                      }
                      return null;
                    },
                    textInputAction: TextInputAction.next,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      constraints: const BoxConstraints(minHeight: 40),
                      contentPadding: const EdgeInsets.only(bottom: 0, top: 10),
                      isCollapsed: true,
                      hintText: S.of(context).secondName,
                      hintStyle: const TextStyle(color: Colors.white),
                      border: InputBorder.none,
                    ),
                  ),
                  TextFormField(
                    controller: _emailController,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      constraints: const BoxConstraints(minHeight: 40),
                      contentPadding: const EdgeInsets.only(bottom: 0, top: 10),
                      isCollapsed: true,
                      hintText: S.of(context).emailAddress,
                      hintStyle: const TextStyle(color: Colors.white),
                      border: InputBorder.none,
                    ),
                  ),
                  PhoneFormField(
                    defaultCountry: S.of(context).UA,
                    controller: _phoneController,
                    decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.only(bottom: 0, top: 10),
                        constraints: const BoxConstraints(minHeight: 40),
                        isCollapsed: true,
                        hintText: S.of(context).phoneHintText,
                        hintStyle: const TextStyle(color: Colors.white),
                        border: InputBorder.none),
                    cursorColor: Colors.white,
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                primary: const Color.fromRGBO(86, 195, 133, 1),
                onPrimary: Colors.white,
                fixedSize: const Size(253, 50),
                onSurface: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              child: Text(
                S.of(context).registration,
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
