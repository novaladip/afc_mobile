import 'package:afc_mobile/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'application.dart';

final List<BlocProvider> teacherBlocProvider = [
  BlocProvider<CourseTeacherBloc>(
    create: (_) => getIt<CourseTeacherBloc>(),
  ),
  BlocProvider<AddCourseBloc>(
    create: (_) => getIt<AddCourseBloc>(),
  ),
  BlocProvider<CourseDetailBloc>(
    create: (_) => getIt<CourseDetailBloc>(),
  ),
  BlocProvider<CreateSectionBloc>(
    create: (_) => getIt<CreateSectionBloc>(),
  ),
];
