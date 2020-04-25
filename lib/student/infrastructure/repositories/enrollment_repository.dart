import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/student/student.dart';

@lazySingleton
class EnrollmentRepository implements EnrollmentInterface {
  final EnrollmentRemoteProvider enrollmentRemoteProvider;
  final EnrollmentCacheProvider enrollmentCacheProvider;

  EnrollmentRepository({
    @required this.enrollmentRemoteProvider,
    @required this.enrollmentCacheProvider,
  });

  @override
  Future<List<Enrollment>> fetchEnrollments() async {
    var enrollments = await enrollmentCacheProvider.get();
    if (enrollments.isNotEmpty) {
      return enrollments;
    }

    enrollments = await enrollmentRemoteProvider.fetchEnrollments();
    if (enrollments.isNotEmpty) {
      // if result is not empty then cache it
      enrollmentCacheProvider.cache(enrollments);
    }

    return enrollments;
  }

  @override
  Future<Enrollment> enrollCourse(String courseId) async {
    final enrollment = await enrollmentRemoteProvider.enrollCourse(courseId);
    enrollmentCacheProvider.cacheOne(enrollment);
    return enrollment;
  }

  @override
  Future<void> destroyCache() {
    return enrollmentCacheProvider.drop();
  }
}
