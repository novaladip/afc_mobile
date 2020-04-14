import 'package:injectable/injectable.dart';

import 'package:afc_mobile/features/auth/domain/entities/login_dto.dart';
import 'package:afc_mobile/features/auth/domain/entities/register_dto.dart';
import 'package:afc_mobile/features/auth/domain/interfaces/auth_interfaces.dart';
import 'package:afc_mobile/features/auth/infrastructure/data_sources/auth_remote_data_provider.dart';

@injectable
class AuthRepository implements AuthInterface {
  final AuthRemoteDataProvider authRemoteDataProvider;

  AuthRepository(
    this.authRemoteDataProvider,
  );

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
}
