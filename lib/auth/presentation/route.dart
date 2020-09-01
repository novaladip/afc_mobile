import 'package:afc_mobile/auth/auth.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> authRoute = {
  SplashScreen.routeName: (_) => SplashScreen(),
  LoginPage.routeName: (_) => LoginPage(),
  RegisterPage.routeName: (_) => RegisterPage(),
  OnboardingPage.routeName: (_) => OnboardingPage(),
};
