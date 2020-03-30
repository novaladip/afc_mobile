import 'package:flutter/material.dart';

import 'package:afc_mobile/features/intro/intro.dart';
import 'package:afc_mobile/features/login/login.dart';
import 'package:afc_mobile/features/register/register.dart';

Map<String, Widget Function(BuildContext)> buildRoutes() {
  return {
    IntroPage.routeName: (context) => IntroPage(),
    LoginPage.routeName: (context) => LoginPage(),
    RegisterPage.routeName: (context) => RegisterPage(),
  };
}
