import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/teacher/teacher.dart';
import 'package:afc_mobile/common/models/course_model.dart';

@lazySingleton
class CourseTeacherRepository implements CourseTeacherInterface {
  final CourseTeacherRemoteProvider courseTeacherRemoteProvider;

  CourseTeacherRepository({
    @required this.courseTeacherRemoteProvider,
  });

  @override
  Future<Course> createCourse(CreateCourseDto dto) {
    return courseTeacherRemoteProvider.createCourse();
  }

  @override
  Future<List<Course>> fetchCourses() {
    return courseTeacherRemoteProvider.fetchCourses();
  }
}
