import 'package:afc_mobile/features/student/course/course.dart';
import 'package:afc_mobile/features/student/enroll_course/bloc/enroll_course_bloc.dart';
import 'package:afc_mobile/features/student/enrollment/enrollment.dart';
import 'package:afc_mobile/features/teacher/course/course.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:afc_mobile/routes.dart';
import 'package:afc_mobile/styles.dart';
import 'package:afc_mobile/features/auth/auth.dart';
import 'package:afc_mobile/features/login/login.dart';
import 'package:afc_mobile/features/register/register.dart';

import 'injector_container.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => sl<AuthBloc>()..add(AppStarted()),
        ),
        BlocProvider<RegisterBloc>(create: (context) => sl<RegisterBloc>()),
        BlocProvider<LoginBloc>(create: (context) => sl<LoginBloc>()),
        BlocProvider<EnrollmentBloc>(
          create: (context) => sl<EnrollmentBloc>(),
          lazy: false,
        ),
        BlocProvider<EnrollCourseBloc>(
            create: (context) => sl<EnrollCourseBloc>()),
        BlocProvider<CourseStudentBloc>(
            create: (context) => sl<CourseStudentBloc>()),
        BlocProvider<CourseTeacherBloc>(
            create: (context) => sl<CourseTeacherBloc>()),
      ],
      child: MaterialApp(
        title: 'AFC',
        theme: Styles.theme,
        initialRoute: "/",
        routes: buildRoutes(),
      ),
    );
  }
}
