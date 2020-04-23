import 'package:meta/meta.dart';

import 'package:afc_mobile/student/domain/domain.dart';
import 'package:afc_mobile/student/infrastructure/infrastructure.dart';

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
