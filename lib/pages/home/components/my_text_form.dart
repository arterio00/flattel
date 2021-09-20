import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    Key? key,
    required this.hintText,
    this.maxLines,
    this.fontWeight = FontWeight.w400,
    this.fontSize = 14,
    this.onChanged,
  }) : super(
          key: key,
        );

  final int? maxLines;
  final String? hintText;
  final FontWeight fontWeight;
  final int? fontSize;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      scrollPadding: EdgeInsets.all(10),
      maxLines: maxLines,
      style: const TextStyle(color: Color(0xff27AEA4)),
      decoration: InputDecoration(
        enabledBorder: InputBorder.none,
        fillColor: const Color(0x60DADADA),
        filled: true,
        hintStyle: TextStyle(
          fontWeight: fontWeight,
        ),
        hintText: hintText,
      ),
    );
  }
}
