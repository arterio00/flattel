import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField(
      {Key? key,
      required this.hintText,
      this.maxLines = 1,
      this.fontWeight = FontWeight.w400,
      this.fontSize = 14,
      this.onChanged,
      this.textInputAction = TextInputAction.next,
      this.validation})
      : super(
          key: key,
        );

  final int? maxLines;
  final String? hintText;
  final FontWeight fontWeight;
  final int? fontSize;
  final Function(String)? onChanged;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validation;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validation,
      onChanged: onChanged,
      maxLines: maxLines,
      style: const TextStyle(color: Color(0xff27AEA4)),
      decoration: InputDecoration(
        contentPadding: maxLines == 1
            ? EdgeInsets.symmetric(vertical: 5, horizontal: 10)
            : null,
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.transparent)),
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
