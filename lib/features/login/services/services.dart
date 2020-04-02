import 'package:afc_mobile/features/login/dto/dto.dart';
import 'package:afc_mobile/shared/utils/utils.dart';

abstract class LoginService {
  Future<String> call(LoginDto dto);
}

class LoginServiceImpl implements LoginService {
  Api api;

  LoginServiceImpl(this.api);

  @override
  Future<String> call(LoginDto dto) async {
    try {
      final response = await api.http.post(URL.login(), data: dto.toFormData);
      return response.data['bearer_token'];
    } catch (e) {
      throw e;
    }
  }
}
