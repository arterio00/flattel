import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:swipe/themes/logo.dart';
import 'package:swipe/themes/colors.dart';

class PinCode extends StatelessWidget {
  PinCode({Key? key}) : super(key: key);
  String? codeController;

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
                codeController = context;
              },
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                print('$codeController');
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
