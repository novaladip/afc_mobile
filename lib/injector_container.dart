import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'shared/utils/utils.dart';
import 'features/auth/auth.dart';
import 'features/login/login.dart';
import 'features/register/register.dart';
import 'features/student/course/course.dart';

final sl = GetIt.instance;

const API_URL_LOCAL = "https://8020a592.ngrok.io/api";
const API_URL_DEV = "http://10.0.2.2:5000/api";

Future<void> init() async {
  // Auth Bloc
  sl.registerLazySingleton(() => AuthBloc(sl(), sl()));
  sl.registerLazySingleton<AuthService>(() => AuthServiceImpl(sl()));

  // Register Bloc
  sl.registerLazySingleton(() => RegisterBloc(sl()));
  sl.registerLazySingleton<RegisterService>(() => RegisterServiceImpl(sl()));

  // Login Bloc
  sl.registerLazySingleton(() => LoginBloc(sl(), sl()));
  sl.registerLazySingleton<LoginService>(() => LoginServiceImpl(sl()));

  // Course Student Bloc
  sl.registerLazySingleton(() => CourseStudentBloc(sl()));
  sl.registerLazySingleton<ICourseStudentService>(
      () => CourseStudentService(sl()));

  // Internal
  sl.registerLazySingleton(() => Api(sl()));

  // 3rd Party
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);

  final dio = Dio(BaseOptions(baseUrl: API_URL_LOCAL));
  sl.registerLazySingleton(() => dio);
}
