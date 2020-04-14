import 'package:injectable/injectable.dart';

import 'package:afc_mobile/features/auth/application/auth_facade_service.dart';
import 'package:afc_mobile/features/auth/infrastructure/models/login_dto_model.dart';
import 'package:afc_mobile/features/auth/infrastructure/models/register_dto_model.dart';

@injectable
class AuthApi {
  final AuthFacadeService authFacade;

  AuthApi(this.authFacade);

  Future<String> getAccessToken(LoginDtoModel dto) {
    return this.authFacade.getAccessToken(dto);
  }

  Future<void> registerTeacher(RegisterDtoModel dto) {
    return this.authFacade.registerTeacher(dto);
  }

  Future<void> registerStudent(RegisterDtoModel dto) {
    return this.authFacade.registerStudent(dto);
  }
}
