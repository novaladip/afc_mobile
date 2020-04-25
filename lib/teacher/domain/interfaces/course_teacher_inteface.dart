import 'package:afc_mobile/teacher/teacher.dart';
import 'package:afc_mobile/common/models/models.dart';

abstract class CourseTeacherInterface {
  Future<List<Course>> fetchCourses();
  Future<Course> createCourse(CreateCourseDto dto);
}
