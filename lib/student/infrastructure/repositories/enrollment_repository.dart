import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:afc_mobile/student/student.dart';

@lazySingleton
class EnrollmentRepository implements EnrollmentInterface {
  final EnrollmentRemoteProvider enrollmentRemoteProvider;

  EnrollmentRepository({
    @required this.enrollmentRemoteProvider,
  });

  @override
  Future<List<Enrollment>> fetchEnrollments() {
    return enrollmentRemoteProvider.fetchEnrollments();
  }
}
