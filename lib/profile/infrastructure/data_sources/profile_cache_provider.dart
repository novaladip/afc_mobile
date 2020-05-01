import 'package:afc_mobile/common/local_database/local_database.dart';
import 'package:afc_mobile/common/models/models.dart';
import 'package:injectable/injectable.dart';
import 'package:sembast/sembast.dart';

@lazySingleton
class ProfileCacheProvider {
  static const PROFILE_STORE_NAME = 'profile_store';
  final _profileStore = intMapStoreFactory.store(PROFILE_STORE_NAME);

  Future<Database> get db async => LocalDatabase.instance.database;

  Future<void> cache(User user) async {
    await drop();
    final userMap = user.toMap;
    userMap['links']['avatar'] = user.avatar.split('.id').last;

    await _profileStore.add(await db, userMap);
  }

  Future<void> drop() async {
    await _profileStore.drop(await db);
  }

  Future<User> get() async {
    final recordSnapshots = await _profileStore.findFirst(await db);

    if (recordSnapshots == null) {
      return null;
    }

    return User.fromJson(recordSnapshots.value);
  }
}
