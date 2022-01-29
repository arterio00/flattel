import 'package:flutter/material.dart';

class MyThemes {
  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: Colors.green,
      splashColor: const Color(0xFF27AEA4),
      primaryColor: const Color(0xFF27AEA4),
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
            color: Color(0xFF2E2E2E),
            fontSize: 20,
            fontWeight: FontWeight.w400),
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Color(0xFFF5F5F5),
      ),
      fontFamily: 'Montserrat',
      scaffoldBackgroundColor: Colors.white,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(
                fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
            padding: EdgeInsets.zero,
            primary: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
      ),
      textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          caption: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
          bodyText1: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          headline2: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              color: Color(0xFF27AEA4)),
          subtitle1: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          subtitle2: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
          bodyText2: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          button: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xFF828282))),
    );
  }
}
