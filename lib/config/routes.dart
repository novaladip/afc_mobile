import 'package:flutter/material.dart';

import 'package:afc_mobile/features/auth/auth.dart';
import 'package:afc_mobile/features/course/course.dart';

Map<String, Widget Function(BuildContext)> buildRoutes() {
  return {
    LoginPage.routeName: (_) => LoginPage(),
    SplashScreen.routeName: (_) => SplashScreen(),
    RegisterPage.routeName: (_) => RegisterPage(),
    CourseDetailPage.routeName: (_) => CourseDetailPage(),
    AuthenticatedPage.routeName: (_) => AuthenticatedPage(),
    SectionDetailPage.routeName: (_) => SectionDetailPage(),
  };
}
