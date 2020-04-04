import 'package:afc_mobile/features/student/course/models/models.dart';
import 'package:afc_mobile/shared/utils/api/api.dart';

abstract class ICourseStudentService {
  Future<List<CourseStudent>> fetch();
  Future<void> enroll();
}

class CourseStudentService implements ICourseStudentService {
  final Api _api;

  const CourseStudentService(this._api);

  @override
  Future<void> enroll() async {
    try {} catch (e) {
      throw e;
    }
  }

  @override
  Future<List<CourseStudent>> fetch() async {
    try {
      final res = await _api.http.get(URL.studentCourse());
      final courses = (res.data as List)
          .map((item) => CourseStudent.fromJSON(item))
          .toList();

      return courses;
    } catch (e) {
      throw e;
    }
  }
}
