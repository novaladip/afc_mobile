import 'package:flutter/material.dart';

import 'package:afc_mobile/auth/auth.dart';
import 'package:afc_mobile/student/student.dart';
import 'package:afc_mobile/teacher/teacher.dart';

Map<String, Widget Function(BuildContext)> buildRoutes() {
  return {
    ...authRoute,
    ...studentRoute,
    ...teacherRoute,
  };
}
