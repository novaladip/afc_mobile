import 'package:afc_mobile/features/auth/infrastructure/data_sources/auth_local_data_source.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/features/auth/domain/entities/login_dto.dart';
import 'package:afc_mobile/features/auth/domain/entities/register_dto.dart';
import 'package:afc_mobile/features/auth/domain/interfaces/auth_interfaces.dart';
import 'package:afc_mobile/features/auth/infrastructure/data_sources/auth_remote_data_provider.dart';
import 'package:meta/meta.dart';

@injectable
class AuthRepository implements AuthInterface {
  final AuthRemoteDataProvider authRemoteDataProvider;
  final AuthLocalDataSource authLocalDataSource;
  AuthRepository({
    @required this.authRemoteDataProvider,
    @required this.authLocalDataSource,
  });

  @override
  Future<String> getAccessToken(LoginDto dto) {
    return authRemoteDataProvider.getAccessToken(dto);
  }

  @override
  Future<void> registerTeaher(RegisterDto dto) {
    return authRemoteDataProvider.registerTeacher(dto);
  }

  @override
  Future<void> regiterStudent(RegisterDto dto) {
    return authRemoteDataProvider.registerStudent(dto);
  }

  @override
  String getToken() {
    return authLocalDataSource.getToken();
  }

  @override
  Future<void> persistToken(String token) {
    return authLocalDataSource.persistToken(token);
  }

  @override
  Future<void> removeToken() {
    return authLocalDataSource.removeToken();
  }
}
