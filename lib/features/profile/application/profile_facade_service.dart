import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/shared/entities/entities.dart';
import 'package:afc_mobile/features/profile/domain/entities/update_profile_dto.dart';
import 'package:afc_mobile/features/profile/infrastructure/repositories/profile_repository.dart';

@lazySingleton
class ProfileFacadeService {
  final ProfileRepository profileRepository;

  ProfileFacadeService({
    @required this.profileRepository,
  });

  Future<User> getProfile() {
    return profileRepository.getProfile();
  }

  Future<User> updateProfile(UpdateProfileDto dto) {
    return profileRepository.updateProfile(dto);
  }
}
