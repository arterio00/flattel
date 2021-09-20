import 'package:flutter/material.dart';

class MyLabelField extends StatelessWidget {
  const MyLabelField({
    Key? key,
    required this.prefixText,
    this.suffixText,
    this.suffixIcon,
  }) : super(key: key);
  final String prefixText;
  final String? suffixText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, top: 13),
      child: Row(
        children: [
          Expanded(
              child: Text(
            prefixText,
            style: TextStyle(fontWeight: FontWeight.w600),
          )),
          if (suffixText != null && suffixIcon != null) groupSuffixLabel()
        ],
      ),
    );
  }

  InkWell groupSuffixLabel() {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Text(
            suffixText as String,
            style: const TextStyle(
                color: Color(0xff4BC19D), fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            width: 10,
          ),
          suffixIcon as Widget,
        ],
      ),
    );
  }
}
