import 'package:injectable/injectable.dart';

import 'package:afc_mobile/common/common.dart';
import 'package:afc_mobile/features/auth/infrastructure/models/login_dto_model.dart';
import 'package:afc_mobile/features/auth/infrastructure/models/register_dto_model.dart';

@injectable
class AuthRemoteDataProvider {
  final Api _api;

  const AuthRemoteDataProvider(this._api);

  Future<String> getAccessToken(LoginDtoModel dto) async {
    try {
      final res = await _api.dio.post('/user/login', data: dto.toFormData);
      return res.data['bearer_token'];
    } catch (e) {
      print(e);
      throw e;
    }
  }

  Future<void> registerStudent(RegisterDtoModel dto) async {
    try {
      await _api.dio.post('/user/register/student', data: await dto.toFormData);
    } catch (e) {
      throw e;
    }
  }

  Future<void> registerTeacher(RegisterDtoModel dto) async {
    try {
      await _api.dio.post('/user/register/teacher', data: await dto.toFormData);
    } catch (e) {
      throw e;
    }
  }
}
