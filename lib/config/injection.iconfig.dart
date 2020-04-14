// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:afc_mobile/common/api/api.dart';
import 'package:afc_mobile/features/auth/infrastructure/data_sources/auth_remote_data_provider.dart';
import 'package:afc_mobile/features/auth/infrastructure/repositories/auth_repository.dart';
import 'package:afc_mobile/features/auth/application/auth_facade_service.dart';
import 'package:afc_mobile/features/auth/api/api.dart';
import 'package:afc_mobile/features/auth/presentation/login/bloc/login_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  g.registerFactory<Api>(() => Api());
  g.registerFactory<AuthRemoteDataProvider>(
      () => AuthRemoteDataProvider(g<Api>()));
  g.registerFactory<AuthRepository>(
      () => AuthRepository(g<AuthRemoteDataProvider>()));
  g.registerFactory<AuthFacadeService>(
      () => AuthFacadeService(repository: g<AuthRepository>()));
  g.registerFactory<AuthApi>(() => AuthApi(g<AuthFacadeService>()));
  g.registerFactory<LoginBloc>(() => LoginBloc(authApi: g<AuthApi>()));
}
