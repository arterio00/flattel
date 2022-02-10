import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    this.onPressed,
    required this.text,
  }) : super(key: key);
  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: onPressed,
      child: Container(
        width: size.width * 0.8,
        height: size.height * 0.06,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xff56C486),
              Color(0xff42C0B5),
            ]),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        alignment: Alignment.center,
        child: Text(text, style: Theme.of(context).textTheme.caption),
      ),
    );
  }
}
