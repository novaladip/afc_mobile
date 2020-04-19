import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/common/common.dart';
import 'package:afc_mobile/shared/models/models.dart';
import 'package:afc_mobile/features/profile/domain/entities/update_profile_dto.dart';

@lazySingleton
class ProfileRemoteDataProvider {
  final Api api;

  ProfileRemoteDataProvider({
    @required this.api,
  });

  Future<UserModel> fetchProfile() async {
    try {
      final res = await api.dio.get('/user/profile');
      final user = UserModel.fromJson(res.data);
      return user;
    } catch (e) {
      throw e;
    }
  }

  Future<UserModel> updateProfile(UpdateProfileDto dto) async {
    try {
      final formData = FormData.fromMap({
        'avatar': MultipartFile.fromFileSync(
          dto.avatar.path,
          filename: dto.avatar.path.split('/').last,
        ),
      });
      final res = await api.dio.put('/user/profile', data: formData);
      final user = UserModel.fromJson(res.data);
      return user;
    } catch (e) {
      throw e;
    }
  }
}
