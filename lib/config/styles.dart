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
      overline: TextStyle(
        fontSize: 13,
        fontFamily: 'Comic Neue',
        color: Colors.grey,
      ),
    ).apply(bodyColor: Colors.black),
    appBarTheme: AppBarTheme(
      color: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
    ),
  );
}
