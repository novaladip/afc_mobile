import 'package:afc_mobile/features/auth/ui/splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:afc_mobile/features/intro/intro.dart';
import 'package:afc_mobile/features/login/login.dart';
import 'package:afc_mobile/features/register/register.dart';

Map<String, Widget Function(BuildContext)> buildRoutes() {
  return {
    SplashScreen.routeName: (context) => SplashScreen(),
    IntroPage.routeName: (context) => IntroPage(),
    LoginPage.routeName: (context) => LoginPage(),
    RegisterPage.routeName: (context) => RegisterPage(),
  };
}
