import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/shared/entities/entities.dart';
import 'package:afc_mobile/features/profile/application/profile_facade_service.dart';
import 'package:afc_mobile/features/profile/domain/entities/update_profile_dto.dart';

@lazySingleton
class ProfileApi {
  final ProfileFacadeService profileFacadeService;

  ProfileApi({
    @required this.profileFacadeService,
  });

  Future<User> getProfile() {
    return profileFacadeService.getProfile();
  }

  Future<User> updateProfile(UpdateProfileDto dto) {
    return profileFacadeService.updateProfile(dto);
  }
}
