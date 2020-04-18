import 'package:flutter/material.dart';

class Style {
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: Color(0XFF0069FF),
    accentColor: Color(0XFF74acc4),
    inputDecorationTheme: ThemeData.light().inputDecorationTheme.copyWith(
          border: UnderlineInputBorder(),
        ),
  );
}
