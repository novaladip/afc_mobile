import 'package:afc_mobile/features/enrollment/domain/entities/enrollment.dart';

abstract class EnrollmentInterface {
  Future<List<Enrollment>> getEnrollments();
}
