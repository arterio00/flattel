import 'dart:ui';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String? hintText;
  final void Function(String f)? onChanged;
  final TextInputType? keyboardType;
  final bool? obscureText;

  const MyTextField(
      {Key? key,
      @required this.hintText,
      @required this.onChanged,
      this.keyboardType,
      this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: 44,
      width: 253,
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [
          Color(0x2527AE63),
          Color(0x2527AE9E),
        ]),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        onChanged: onChanged,
        keyboardType: keyboardType,
        style: const TextStyle(color: Colors.white, fontSize: 16),
        cursorColor: Colors.white,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
