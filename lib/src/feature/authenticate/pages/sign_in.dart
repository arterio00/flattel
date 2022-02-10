import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phone_form_field/phone_form_field.dart';

import '/src/feature/authenticate/entities/my_user.dart';
import '/src/widgets/my_button.dart';
import '/themes/colors.dart';
import '/themes/logo.dart';
import '../auth_bloc/auth_bloc.dart';
import '/generated/l10n.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late final PhoneController _phoneController =
      PhoneController(const PhoneNumber(isoCode: 'UA', nsn: ''));

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  String? get _errorText {
    // at any time, we can get the text from _controller.value.text
    final String phoneNumber = _phoneController.value?.international ?? '';
    // Note: you can do your own custom validation here
    // Move this logic this outside the widget for more testable code

    if (phoneNumber.length < 5) {
      return 'Too short';
    }
    // return null if the text is valid
    return null;
  }

  void onPressed() async {
    final phone = _phoneController.value;
    final myUser = MyUser(
        uid: '',
        email: '',
        avatar: null,
        firstName: '',
        secondName: '',
        phone: phone!.international);

    context.read<AuthBloc>().add(AuthEvent.signIn(context, myUser));
  }

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
        child: ValueListenableBuilder<PhoneNumber?>(
          valueListenable: _phoneController,
          builder: (context, PhoneNumber? value, __) {
            return Column(
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
                    style: Theme.of(context).textTheme.caption,
                    controller: _phoneController,
                    decoration: InputDecoration(
                        errorText: _errorText,
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
                MyButton(
                  onPressed: _errorText == null ? onPressed : () {},
                  text: S.of(context).next,
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
