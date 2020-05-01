import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/profile/profile.dart';
import 'package:afc_mobile/common/models/user_model.dart';

@lazySingleton
class ProfileRepository implements ProfileInterface {
  final ProfileRemoteProvider profileRemoteProvider;
  final ProfileCacheProvider profileCacheProvider;

  ProfileRepository({
    @required this.profileRemoteProvider,
    @required this.profileCacheProvider,
  });

  @override
  Future<User> fetchProfile() async {
    var profile = await profileCacheProvider.get();
    if (profile != null) {
      return profile;
    }

    profile = await profileRemoteProvider.fetchProfile();
    // Cache profile
    profileCacheProvider.cache(profile);

    return profile;
  }

  @override
  Future<void> destroyCache() {
    return profileCacheProvider.drop();
  }

  @override
  Future<User> refreshProfile() async {
    final profile = await profileRemoteProvider.fetchProfile();
    profileCacheProvider.cache(profile);
    return profile;
  }

  @override
  Future<void> updateProfile(String avatarPath) {
    return profileRemoteProvider.updateProfile(avatarPath);
  }
}
