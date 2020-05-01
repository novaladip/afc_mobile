import 'package:afc_mobile/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'application.dart';

final List<BlocProvider> studentBlocProvider = [
  BlocProvider<EnrollmentBloc>(
    create: (_) => getIt<EnrollmentBloc>(),
  ),
  BlocProvider<CourseStudentBloc>(
    create: (_) => getIt<CourseStudentBloc>(),
  ),
  BlocProvider<EnrollCourseBloc>(
    create: (_) => getIt<EnrollCourseBloc>(),
  )
];
