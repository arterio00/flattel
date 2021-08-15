import 'package:flutter/material.dart';
import 'package:swipe/components/my_text_field.dart';
import 'package:swipe/themes/logo.dart';
import 'package:swipe/themes/colors.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  String? _name;
  String? _secondName;
  String? _phone;

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
            MyTextField(
              hintText: 'Имя',
              onChanged: (val) {
                setState(() {
                  _name = val;
                });
              },
            ),
            const SizedBox(
              height: 15,
            ),
            MyTextField(
              hintText: 'Фамилия',
              onChanged: (val) {
                setState(() {
                  _secondName = val;
                });
              },
            ),
            const SizedBox(
              height: 15,
            ),
            MyTextField(
              onChanged: (val) {
                setState(() {
                  _phone = val;
                });
              },
              hintText: 'Телефон',
              keyboardType: const TextInputType.numberWithOptions(),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () async {
                print('$_secondName $_name $_phone');
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
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
