// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:afc_mobile/common/api/api.dart';
import 'package:afc_mobile/features/auth/infrastructure/data_sources/auth_remote_data_provider.dart';
import 'package:afc_mobile/features/course/infrastructure/data_sources/course_remote_data_provider.dart';
import 'package:afc_mobile/features/course/infrastructure/repositories/course_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:afc_mobile/config/injection.dart';
import 'package:afc_mobile/features/auth/infrastructure/data_sources/auth_local_data_source.dart';
import 'package:afc_mobile/features/auth/infrastructure/repositories/auth_repository.dart';
import 'package:afc_mobile/features/course/application/course_facade_service.dart';
import 'package:afc_mobile/features/auth/application/auth_facade_service.dart';
import 'package:afc_mobile/features/course/api/api.dart';
import 'package:afc_mobile/features/course/presentation/course_detail/bloc/course_detail_bloc.dart';
import 'package:afc_mobile/features/course/presentation/course_teacher/bloc/course_teacher_bloc.dart';
import 'package:afc_mobile/features/course/presentation/section_detail/bloc/class_photo_form_bloc/section_photo_form_bloc.dart';
import 'package:afc_mobile/features/course/presentation/section_detail/bloc/attendance_form_bloc/attendance_form_bloc.dart';
import 'package:afc_mobile/features/auth/api/api.dart';
import 'package:afc_mobile/features/auth/presentation/splash_screen/bloc/auth_bloc.dart';
import 'package:afc_mobile/features/auth/presentation/login/bloc/login_bloc.dart';
import 'package:afc_mobile/features/auth/presentation/register/bloc/register_bloc.dart';
import 'package:afc_mobile/features/course/presentation/section_detail/bloc/section_detail_bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final registerModule = _$RegisterModule();
  g.registerFactory<Api>(() => Api());
  g.registerFactory<AuthRemoteDataProvider>(
      () => AuthRemoteDataProvider(g<Api>()));
  g.registerLazySingleton<CourseRemoteDataProvider>(
      () => CourseRemoteDataProvider(api: g<Api>()));
  g.registerLazySingleton<CourseRepository>(() => CourseRepository(
      courseRemoteDataProvider: g<CourseRemoteDataProvider>()));
  final sharedPreferences = await registerModule.prefs;
  g.registerFactory<SharedPreferences>(() => sharedPreferences);
  g.registerFactory<AuthLocalDataSource>(() => AuthLocalDataSource(
      sharedPreferences: g<SharedPreferences>(), api: g<Api>()));
  g.registerFactory<AuthRepository>(() => AuthRepository(
      authRemoteDataProvider: g<AuthRemoteDataProvider>(),
      authLocalDataSource: g<AuthLocalDataSource>()));
  g.registerLazySingleton<CourseFacadeService>(
      () => CourseFacadeService(courseRepository: g<CourseRepository>()));
  g.registerFactory<AuthFacadeService>(
      () => AuthFacadeService(repository: g<AuthRepository>()));
  g.registerLazySingleton<CourseApi>(
      () => CourseApi(courseFacadeService: g<CourseFacadeService>()));
  g.registerLazySingleton<CourseDetailBloc>(
      () => CourseDetailBloc(courseApi: g<CourseApi>()));
  g.registerLazySingleton<CourseTeacherBloc>(
      () => CourseTeacherBloc(courseApi: g<CourseApi>()));
  g.registerLazySingleton<SectionPhotoFormBloc>(
      () => SectionPhotoFormBloc(courseApi: g<CourseApi>()));
  g.registerLazySingleton<AttendanceFormBloc>(
      () => AttendanceFormBloc(courseApi: g<CourseApi>()));
  g.registerFactory<AuthApi>(() => AuthApi(g<AuthFacadeService>()));
  g.registerLazySingleton<AuthBloc>(
      () => AuthBloc(authApi: g<AuthApi>(), api: g<Api>()));
  g.registerLazySingleton<LoginBloc>(
      () => LoginBloc(authBloc: g<AuthBloc>(), authApi: g<AuthApi>()));
  g.registerLazySingleton<RegisterBloc>(
      () => RegisterBloc(authApi: g<AuthApi>()));
  g.registerLazySingleton<SectionDetailBloc>(() => SectionDetailBloc(
      courseApi: g<CourseApi>(), attendanceFormBloc: g<AttendanceFormBloc>()));
}

class _$RegisterModule extends RegisterModule {}
