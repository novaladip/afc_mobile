import 'package:afc_mobile/shared/models/models.dart';
import 'package:afc_mobile/shared/utils/utils.dart';
import 'package:dio/dio.dart';

abstract class ICourseTeacherService {
  Future<List<Course>> fetch();
}

class CourseTeacherService implements ICourseTeacherService {
  final Api _api;

  const CourseTeacherService(this._api);

  Future<List<Course>> fetch() async {
    try {
      final res = await _api.http.get(URL.teacherCourse());
      final courses =
          (res.data as List).map((item) => Course.fromJSON(item)).toList();
      return courses;
    } on DioError catch (e) {
      throw e;
    }
  }
}
