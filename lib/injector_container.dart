import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:afc_mobile/features/register/register.dart';
import 'package:afc_mobile/shared/utils/utils.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Register Bloc
  sl.registerLazySingleton(() => RegisterBloc(sl()));
  sl.registerLazySingleton<RegisterService>(() => RegisterServiceImpl(sl()));

  // Internal
  sl.registerLazySingleton(() => Api(sl()));

  // 3rd Party
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);

  final dio = Dio(BaseOptions(baseUrl: 'http://10.0.2.2:5000/api'));
  sl.registerLazySingleton(() => dio);
}
