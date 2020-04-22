import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'injection.iconfig.dart';

final GetIt getIt = GetIt.I;

@injectableInit
void configureInjection() {
  $initGetIt(getIt);
}

@registerModule
abstract class RegisterModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
