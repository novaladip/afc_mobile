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
      title: TextStyle(
        fontFamily: 'Manrope',
        fontSize: 24,
        fontWeight: FontWeight.w600,
      ),
      body1: TextStyle(
        fontSize: 16,
        fontFamily: 'Comic Neue',
      ),
      body2: TextStyle(
        fontSize: 15,
        fontFamily: 'Comic Neue',
      ),
      overline: TextStyle(
        fontSize: 13,
        fontFamily: 'Comic Neue',
        color: Colors.grey,
      ),
      display1: TextStyle(
        fontSize: 20,
        fontFamily: 'Manrope',
        fontWeight: FontWeight.w600,
      ),
    ).apply(bodyColor: Colors.black),
    appBarTheme: AppBarTheme(
      color: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      textTheme: TextTheme(
        title: TextStyle(
          color: Colors.black,
          fontFamily: 'Manrope',
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}
