import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/shared/entities/user.dart';
import 'package:afc_mobile/features/profile/domain/entities/update_profile_dto.dart';
import 'package:afc_mobile/features/profile/domain/interfaces/profile_interface.dart';
import 'package:afc_mobile/features/profile/infrastructure/data_sources/profile_remote_data_provider.dart';

@lazySingleton
class ProfileRepository implements ProfileInterface {
  final ProfileRemoteDataProvider profileRemoteDataProvider;

  ProfileRepository({
    @required this.profileRemoteDataProvider,
  });

  @override
  Future<User> getProfile() {
    return profileRemoteDataProvider.fetchProfile();
  }

  @override
  Future<User> updateProfile(UpdateProfileDto dto) {
    return profileRemoteDataProvider.updateProfile(dto);
  }
}
