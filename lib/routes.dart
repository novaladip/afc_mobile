import 'package:flutter/material.dart';

import 'auth/auth.dart';
import 'student/student.dart';
import 'teacher/teacher.dart';
import 'section/section.dart';

Map<String, Widget Function(BuildContext)> buildRoutes() {
  return {
    ...authRoute,
    ...studentRoute,
    ...teacherRoute,
    ...sectionRoute,
  };
}
