import 'package:afc_mobile/features/course/domain/entities/course.dart';
import 'package:afc_mobile/features/course/domain/entities/course_detail.dart';

abstract class CourseInterface {
  Future<List<Course>> getCourses();
  Future<CourseDetail> getCourseDetail(String courseId);
}
