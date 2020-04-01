import 'package:afc_mobile/features/register/dto/dto.dart';
import 'package:afc_mobile/shared/utils/utils.dart';
import 'package:dio/dio.dart';

abstract class RegisterService {
  Future<void> registerStudent(RegisterDto dto);
  Future<void> registerTeacher(RegisterDto dto);
}

class RegisterServiceImpl implements RegisterService {
  Api api;

  RegisterServiceImpl(this.api);

  @override
  Future<void> registerStudent(RegisterDto dto) async {
    try {
      final avatarName = dto.avatar.path.split('/').last;
      FormData data = FormData.fromMap({
        "avatar":
            await MultipartFile.fromFile(dto.avatar.path, filename: avatarName),
        "email": dto.email,
        "first_name": dto.firstName,
        "last_name": dto.lastName,
        "password": dto.password,
      });

      await api.http.post(URL.registerStudent(), data: data);
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<void> registerTeacher(RegisterDto dto) async {
    try {
      final avatarName = dto.avatar.path.split('/').last;
      FormData data = FormData.fromMap({
        "avatar":
            await MultipartFile.fromFile(dto.avatar.path, filename: avatarName),
        "email": dto.email,
        "first_name": dto.firstName,
        "last_name": dto.lastName,
        "password": dto.password,
      });

      await api.http.post(URL.registerTeacher(), data: data);
    } catch (e) {
      throw e;
    }
  }
}
