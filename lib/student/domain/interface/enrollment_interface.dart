import 'package:afc_mobile/student/student.dart';

abstract class EnrollmentInterface {
  Future<List<Enrollment>> fetchEnrollments();
  Future<Enrollment> enrollCourse(String courseId);
}
