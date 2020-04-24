import 'package:afc_mobile/common/models/models.dart';

abstract class ProfileInterface {
  Future<User> fetchProfile();
  Future<void> destroyCache();
}
