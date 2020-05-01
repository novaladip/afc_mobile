import 'package:afc_mobile/injection.dart';
import 'package:afc_mobile/section/section.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final List<BlocProvider> sectionBlocProvider = [
  BlocProvider<SectionDetailBloc>(
    create: (_) => getIt(),
  ),
  BlocProvider<RecognizeFormBloc>(
    create: (_) => getIt(),
  ),
  BlocProvider<AttendancesFormBloc>(
    create: (_) => getIt(),
  ),
];
