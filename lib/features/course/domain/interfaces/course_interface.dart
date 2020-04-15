import 'package:afc_mobile/features/course/domain/entities/course.dart';

abstract class CourseInterface {
  Future<List<Course>> getCourses();
}
