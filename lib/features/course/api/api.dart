import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/features/course/domain/entities/course.dart';
import 'package:afc_mobile/features/course/application/course_facade_service.dart';

@lazySingleton
@injectable
class CourseApi {
  final CourseFacadeService courseFacadeService;

  CourseApi({
    @required this.courseFacadeService,
  });

  Future<List<Course>> getCourses() async {
    return courseFacadeService.fetchCourses();
  }
}
