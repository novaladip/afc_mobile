import 'package:afc_mobile/shared/entities/entities.dart';
import 'package:afc_mobile/features/profile/domain/entities/update_profile_dto.dart';

abstract class ProfileInterface {
  Future<User> getProfile();
  Future<User> updateProfile(UpdateProfileDto dto);
}
