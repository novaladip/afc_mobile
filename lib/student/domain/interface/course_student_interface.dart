import 'package:afc_mobile/common/models/models.dart';

abstract class CourseStudentInterface {
  Future<List<Course>> fetchCourses();
}
