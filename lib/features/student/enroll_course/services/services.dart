import 'package:afc_mobile/shared/models/models.dart';
import 'package:afc_mobile/shared/utils/utils.dart';

abstract class IEnrollCourseService {
  Future<Enrollment> enroll(String courseId);
}

class EnrollCourseService implements IEnrollCourseService {
  final Api _api;

  const EnrollCourseService(this._api);

  @override
  Future<Enrollment> enroll(String courseId) async {
    try {
      await Future.delayed(Duration(seconds: 1));
      final res = await _api.http.post(URL.enrollCourse(courseId));
      final enrollment = Enrollment.fromJSON(res.data);
      return enrollment;
    } catch (e) {
      throw e;
    }
  }
}
