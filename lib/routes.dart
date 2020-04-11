import 'package:flutter/material.dart';

import 'package:afc_mobile/features/intro/intro.dart';
import 'package:afc_mobile/features/login/login.dart';
import 'package:afc_mobile/features/student/student.dart';
import 'package:afc_mobile/features/register/register.dart';
import 'package:afc_mobile/features/auth/ui/splash_screen.dart';
import 'package:afc_mobile/features/teacher/home/ui/home_screen.dart';
import 'package:afc_mobile/features/teacher/course_detail/course_detail.dart';

Map<String, Widget Function(BuildContext)> buildRoutes() {
  return {
    SplashScreen.routeName: (context) => SplashScreen(),
    IntroPage.routeName: (context) => IntroPage(),
    LoginPage.routeName: (context) => LoginPage(),
    RegisterPage.routeName: (context) => RegisterPage(),
    BottomAppStudent.routeName: (context) => BottomAppStudent(),
    CourseDetailPage.routeName: (context) => CourseDetailPage(),
    HomeScreenTeacher.routeName: (context) => HomeScreenTeacher(),
  };
}
