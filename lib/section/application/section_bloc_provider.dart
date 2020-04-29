import 'package:afc_mobile/injection.dart';
import 'package:afc_mobile/section/application/application.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final List<BlocProvider> sectionBlocProvider = [
  BlocProvider<SectionDetailBloc>(
    create: (_) => getIt(),
  ),
];
