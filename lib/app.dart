import 'package:afc_mobile/features/profile/presentation/profile_page/bloc/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:afc_mobile/config/config.dart';
import 'package:afc_mobile/features/auth/presentation/login/bloc/login_bloc.dart';
import 'package:afc_mobile/features/auth/presentation/register/bloc/register_bloc.dart';
import 'package:afc_mobile/features/auth/presentation/splash_screen/bloc/auth_bloc.dart';
import 'package:afc_mobile/features/course/presentation/course_detail/bloc/course_detail_bloc.dart';
import 'package:afc_mobile/features/course/presentation/section_detail/bloc/section_detail_bloc.dart';
import 'package:afc_mobile/features/course/presentation/course_teacher/bloc/course_teacher_bloc.dart';
import 'package:afc_mobile/features/course/presentation/section_detail/bloc/attendance_form_bloc/attendance_form_bloc.dart';
import 'package:afc_mobile/features/course/presentation/section_detail/bloc/class_photo_form_bloc/section_photo_form_bloc.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (_) => getIt<AuthBloc>()..add(CheckAuth()),
          lazy: false,
        ),
        BlocProvider<LoginBloc>(
          create: (_) => getIt<LoginBloc>(),
        ),
        BlocProvider<RegisterBloc>(
          create: (_) => getIt<RegisterBloc>(),
        ),
        BlocProvider<CourseTeacherBloc>(
          create: (_) => getIt<CourseTeacherBloc>(),
        ),
        BlocProvider<CourseDetailBloc>(
          create: (_) => getIt<CourseDetailBloc>(),
        ),
        BlocProvider<SectionDetailBloc>(
          create: (_) => getIt<SectionDetailBloc>(),
        ),
        BlocProvider<SectionPhotoFormBloc>(
          create: (_) => getIt<SectionPhotoFormBloc>(),
        ),
        BlocProvider<AttendanceFormBloc>(
          create: (_) => getIt<AttendanceFormBloc>(),
        ),
        BlocProvider<ProfileBloc>(
          create: (_) => getIt<ProfileBloc>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AFC',
        theme: Style.lightTheme,
        routes: buildRoutes(),
        initialRoute: "/",
      ),
    );
  }
}
