import 'package:sembast/sembast.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/student/student.dart';
import 'package:afc_mobile/common/local_database/local_database.dart';

@lazySingleton
class EnrollmentCacheProvider {
  static const ENROLLMENT_STORE_NAME = 'enrollment_store';
  final _enrollmentStore = intMapStoreFactory.store(ENROLLMENT_STORE_NAME);

  Future<Database> get db async => LocalDatabase.instance.database;

  Future<void> cache(List<Enrollment> enrollments) async {
    await drop();
    final enrollmentsMap = enrollments.map((e) => e.toMap).toList();
    await _enrollmentStore.addAll(await db, enrollmentsMap);
  }

  Future<void> cacheOne(Enrollment enrollment) async {
    final snapshotsRecord = await _enrollmentStore.find(await db);
    if (snapshotsRecord.length > 0) {
      var sr = snapshotsRecord.map((sr) => sr.value).toList();
      sr = [enrollment.toMap, ...sr];
      await drop();
      _enrollmentStore.addAll(await db, sr);
      return;
    }
    await _enrollmentStore.add(await db, enrollment.toMap);
  }

  Future<List<Enrollment>> get() async {
    final snapshotsRecord = await _enrollmentStore.find(await db);

    return snapshotsRecord.map((sr) => Enrollment.fromJson(sr.value)).toList();
  }

  Future<void> drop() async {
    await _enrollmentStore.drop(await db);
  }
}
