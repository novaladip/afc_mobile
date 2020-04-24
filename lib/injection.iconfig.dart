// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:afc_mobile/common/api/api.dart';
import 'package:afc_mobile/auth/infrastructure/data_sources/auth_remote_provider.dart';
import 'package:afc_mobile/student/infrastructure/data_sources/course_student_remote_provider.dart';
import 'package:afc_mobile/student/infrastructure/repositories/course_student_repository.dart';
import 'package:afc_mobile/student/infrastructure/data_sources/enrollment_remote_provider.dart';
import 'package:afc_mobile/student/infrastructure/repositories/enrollment_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:afc_mobile/injection.dart';
import 'package:afc_mobile/auth/infrastructure/data_sources/auth_local_provider.dart';
import 'package:afc_mobile/auth/infrastructure/repository/auth_repository.dart';
import 'package:afc_mobile/student/application/bloc/course_student_bloc.dart';
import 'package:afc_mobile/student/application/enrollment/enrollment_bloc.dart';
import 'package:afc_mobile/auth/application/register/register_bloc.dart';
import 'package:afc_mobile/auth/application/auth/auth_bloc.dart';
import 'package:afc_mobile/auth/application/login/login_bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final registerModule = _$RegisterModule();
  g.registerFactory<Api>(() => Api());
  g.registerLazySingleton<AuthRemoteProvider>(
      () => AuthRemoteProvider(g<Api>()));
  g.registerLazySingleton<CourseStudentRemoteProvider>(
      () => CourseStudentRemoteProvider(api: g<Api>()));
  g.registerLazySingleton<CourseStudentRepository>(() =>
      CourseStudentRepository(
          courseStudentRemoteProvider: g<CourseStudentRemoteProvider>()));
  g.registerLazySingleton<EnrollmentRemoteProvider>(
      () => EnrollmentRemoteProvider(api: g<Api>()));
  g.registerLazySingleton<EnrollmentRepository>(() => EnrollmentRepository(
      enrollmentRemoteProvider: g<EnrollmentRemoteProvider>()));
  final sharedPreferences = await registerModule.prefs;
  g.registerFactory<SharedPreferences>(() => sharedPreferences);
  g.registerLazySingleton<AuthLocalProvider>(() => AuthLocalProvider(
      sharedPreferences: g<SharedPreferences>(), api: g<Api>()));
  g.registerLazySingleton<AuthRepository>(() => AuthRepository(
      authRemoteProvider: g<AuthRemoteProvider>(),
      authLocalProvider: g<AuthLocalProvider>()));
  g.registerLazySingleton<CourseStudentBloc>(() =>
      CourseStudentBloc(courseStudentRepository: g<CourseStudentRepository>()));
  g.registerLazySingleton<EnrollmentBloc>(
      () => EnrollmentBloc(enrollmentRepository: g<EnrollmentRepository>()));
  g.registerLazySingleton<RegisterBloc>(
      () => RegisterBloc(g<AuthRepository>()));
  g.registerLazySingleton<AuthBloc>(() => AuthBloc(g<AuthRepository>()));
  g.registerLazySingleton<LoginBloc>(() =>
      LoginBloc(authBloc: g<AuthBloc>(), authRepository: g<AuthRepository>()));
}

class _$RegisterModule extends RegisterModule {}
