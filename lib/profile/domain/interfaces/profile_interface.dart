import 'package:afc_mobile/common/models/models.dart';

abstract class ProfileInterface {
  Future<User> refreshProfile();
  Future<User> fetchProfile();
  Future<void> destroyCache();
  Future<void> updateProfile(String avatarPath);
}
