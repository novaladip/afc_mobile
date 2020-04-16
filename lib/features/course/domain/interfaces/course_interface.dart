import 'package:afc_mobile/features/course/domain/entities/course.dart';
import 'package:afc_mobile/features/course/domain/entities/course_detail.dart';
import 'package:afc_mobile/features/course/domain/entities/section_detail.dart';

abstract class CourseInterface {
  Future<List<Course>> getCourses();
  Future<CourseDetail> getCourseDetail(String courseId);
  Future<SectionDetail> getSectionDetail(String sectionId);
}
