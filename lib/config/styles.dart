import 'package:flutter/material.dart';

class AppColor {
  static const primary = Color(0XFF0069FF);
  static const accent = Color(0XFF74acc4);
}

class Styles {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: AppColor.primary,
    accentColor: AppColor.primary,
    textTheme: TextTheme(
      bodyText1: TextStyle(
        fontFamily: 'Comic Neue',
        fontSize: 14,
        color: Colors.black,
      ),
      bodyText2: TextStyle(
        fontFamily: 'Comic Neue',
        fontSize: 15,
        color: Colors.black,
      ),
      overline: TextStyle(
        fontSize: 13,
        fontFamily: 'Comic Neue',
        color: Colors.grey,
      ),
    ).apply(bodyColor: Colors.black),
    appBarTheme: AppBarTheme(
      color: Colors.white,
      textTheme: TextTheme(
        headline6: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      iconTheme: IconThemeData(color: Colors.black),
    ),
  );
}
