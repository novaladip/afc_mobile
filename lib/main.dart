import 'package:afc_mobile/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:afc_mobile/injector_container.dart' as di;
import 'package:flutter_bloc/flutter_bloc.dart';

import 'simple_bloc_delegate.dart';

void main() async {
  WidgetsFlutterBinding();

  await Future.wait([
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]),
    di.init(),
  ]);

  BlocSupervisor.delegate = SimpleBlocDelegate();

  runApp(App());
}
