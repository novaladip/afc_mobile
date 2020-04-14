import 'package:flutter/material.dart';

import 'package:afc_mobile/features/auth/auth.dart';

Map<String, Widget Function(BuildContext)> buildRoutes() {
  return {
    SplashScreen.routeName: (_) => SplashScreen(),
    LoginPage.routeName: (_) => LoginPage(),
    RegisterPage.routeName: (_) => RegisterPage(),
  };
}
