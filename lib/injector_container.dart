import 'package:afc_mobile/features/teacher/course/course.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/student/enroll_course/enroll_course.dart';
import 'features/student/enrollment/enrollment.dart';
import 'features/teacher/add_section/add_section.dart';
import 'features/teacher/course_detail/course_detail.dart';
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

  // EnrollCourse Bloc
  sl.registerLazySingleton(
      () => EnrollCourseBloc(enrollCourseService: sl(), enrollmentBloc: sl()));
  sl.registerLazySingleton<IEnrollCourseService>(
      () => EnrollCourseService(sl()));

  // Enrollment Bloc
  sl.registerLazySingleton(() => EnrollmentBloc(sl()));
  sl.registerLazySingleton<IEnrollmentService>(() => EnrollmentService(sl()));

  // Course Teacher Bloc
  sl.registerLazySingleton(() => CourseTeacherBloc(sl()));
  sl.registerLazySingleton<ICourseTeacherService>(
      () => CourseTeacherService(sl()));

  // Course Detail Bloc
  sl.registerLazySingleton(() => CourseDetailBloc(sl()));
  sl.registerLazySingleton<ICourseDetailService>(
      () => CourseDetailService(sl()));

  // Add Section Bloc
  sl.registerLazySingleton(() => AddSectionBloc(sl(), sl()));
  sl.registerLazySingleton<IAddSectionService>(() => AddSectionService(sl()));

  // Internal
  sl.registerLazySingleton(() => Api(sl()));

  // 3rd Party
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);

  final dio = Dio(BaseOptions(baseUrl: API_URL_DEV));
  sl.registerLazySingleton(() => dio);
}
