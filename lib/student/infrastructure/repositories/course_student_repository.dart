import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/student/domain/domain.dart';
import 'package:afc_mobile/common/models/course_model.dart';
import 'package:afc_mobile/student/infrastructure/infrastructure.dart';

@lazySingleton
class CourseStudentRepository implements CourseStudentInterface {
  final CourseStudentRemoteProvider courseStudentRemoteProvider;

  CourseStudentRepository({
    @required this.courseStudentRemoteProvider,
  });

  @override
  Future<List<Course>> fetchCourses() {
    return courseStudentRemoteProvider.fetchCourses();
  }
}
