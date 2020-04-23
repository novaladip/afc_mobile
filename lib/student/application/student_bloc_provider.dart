import 'package:afc_mobile/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:afc_mobile/student/application/application.dart';

final List<BlocProvider> studentBlocProvider = [
  BlocProvider<EnrollmentBloc>(
    create: (_) => getIt<EnrollmentBloc>(),
  )
];
