import 'package:afc_mobile/student/student.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> studentRoute = {
  StudentPage.routeName: (_) => StudentPage(),
};
