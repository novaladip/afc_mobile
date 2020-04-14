import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/features/auth/infrastructure/models/login_dto_model.dart';
import 'package:afc_mobile/features/auth/infrastructure/models/register_dto_model.dart';
import 'package:afc_mobile/features/auth/infrastructure/repositories/auth_repository.dart';

@injectable
class AuthFacadeService {
  final AuthRepository repository;

  AuthFacadeService({
    @required this.repository,
  });

  Future<String> getAccessToken(LoginDtoModel dto) {
    return this.repository.getAccessToken(dto);
  }

  Future<void> registerTeacher(RegisterDtoModel dto) {
    return this.repository.registerTeaher(dto);
  }

  Future<void> registerStudent(RegisterDtoModel dto) {
    return this.repository.regiterStudent(dto);
  }
}
