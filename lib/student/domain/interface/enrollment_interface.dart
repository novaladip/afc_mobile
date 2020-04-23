import 'package:afc_mobile/student/domain/domain.dart';

abstract class EnrollmentInterface {
  Future<List<Enrollment>> fetchEnrollments();
}
