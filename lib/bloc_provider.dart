import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/injection.dart';
import 'features/auth/presentation/login/bloc/login_bloc.dart';
import 'features/auth/presentation/register/bloc/register_bloc.dart';
import 'features/auth/presentation/splash_screen/bloc/auth_bloc.dart';
import 'features/course/presentation/course_detail/bloc/course_detail_bloc.dart';
import 'features/course/presentation/course_student/bloc/course_student_bloc.dart';
import 'features/course/presentation/course_teacher/bloc/course_teacher_bloc.dart';
import 'features/course/presentation/section_detail/bloc/attendance_form_bloc/attendance_form_bloc.dart';
import 'features/course/presentation/section_detail/bloc/class_photo_form_bloc/section_photo_form_bloc.dart';
import 'features/course/presentation/section_detail/bloc/section_detail_bloc.dart';
import 'features/profile/presentation/profile_page/bloc/profile_bloc.dart';

final List<BlocProvider> blocProvider = [
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
  BlocProvider<CourseStudentBloc>(
    create: (_) => getIt<CourseStudentBloc>(),
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
];
