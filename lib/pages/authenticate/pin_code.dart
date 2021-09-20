import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '/themes/colors.dart';
import '/themes/logo.dart';

class PinCode extends StatelessWidget {
  const PinCode({
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
