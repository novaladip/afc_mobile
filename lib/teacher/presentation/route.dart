import 'package:flutter/material.dart';

import 'package:afc_mobile/teacher/teacher.dart';

final Map<String, Widget Function(BuildContext)> teacherRoute = {
  TeacherPage.routeName: (_) => TeacherPage(),
  AddCoursePage.routeName: (_) => AddCoursePage(),
  CourseDetailPage.routeName: (_) => CourseDetailPage(),
};
