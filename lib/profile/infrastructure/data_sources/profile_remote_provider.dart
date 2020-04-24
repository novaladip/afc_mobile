import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/common/api/api.dart';
import 'package:afc_mobile/common/models/models.dart';

@lazySingleton
class ProfileRemoteProvider {
  final Api api;

  ProfileRemoteProvider({
    @required this.api,
  });

  Future<User> fetchProfile() async {
    try {
      final res = await api.dio.get('/user/profile');
      final profile = User.fromJson(res.data);
      return profile;
    } catch (e) {
      throw e;
    }
  }
}
