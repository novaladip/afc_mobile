import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/profile/profile.dart';
import 'package:afc_mobile/common/models/user_model.dart';

@lazySingleton
class ProfileRepository implements ProfileInterface {
  final ProfileRemoteProvider profileRemoteProvider;

  ProfileRepository({
    @required this.profileRemoteProvider,
  });

  @override
  Future<User> fetchProfile() {
    return profileRemoteProvider.fetchProfile();
  }
}
