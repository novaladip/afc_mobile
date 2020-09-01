import 'package:injectable/injectable.dart';

import 'package:afc_mobile/common/api/api.dart';
import 'package:afc_mobile/auth/domain/entity/entity.dart';

@lazySingleton
class AuthRemoteProvider {
  final Api _api;

  const AuthRemoteProvider(this._api);

  Future<String> getAccessToken(LoginDto dto) async {
    try {
      final res = await _api.dio.post('/user/login', data: dto.toFormData);
      return res.data['bearer_token'];
    } catch (e) {
      print(e);
      throw e;
    }
  }

  Future<void> register(RegisterDto dto, bool teacher) async {
    try {
      final url = teacher ? '/user/register/teacher' : '/user/register/student';
      await _api.dio.post(url, data: dto.toFormData);
    } catch (e) {
      throw e;
    }
  }
}
