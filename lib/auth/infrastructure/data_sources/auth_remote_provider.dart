import 'package:afc_mobile/auth/domain/entity/entity.dart';
import 'package:afc_mobile/common/api/api.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthRemoteProvider {
  final Api _api;

  const AuthRemoteProvider(this._api);

  Future<String> getAccessToken(LoginDto dto) async {
    try {
      final res = await _api.dio.post('/user/login', data: dto.toFormData);
      return res.data['bearer_token'];
    } catch (e) {
      throw e;
    }
  }
}
