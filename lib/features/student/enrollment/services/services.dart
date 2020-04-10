import 'package:afc_mobile/features/student/enrollment/dto/dto.dart';
import 'package:afc_mobile/shared/models/models.dart';
import 'package:afc_mobile/shared/utils/utils.dart';

abstract class IEnrollmentService {
  Future<List<Enrollment>> fetch();
  Future<void> enroll(EnrollCourseDto dto);
}

class EnrollmentService implements IEnrollmentService {
  final Api _api;

  EnrollmentService(this._api);

  @override
  Future<void> enroll(EnrollCourseDto dto) async {
    try {
      await _api.http.post(URL.enrollCourse(dto.courseId));
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<List<Enrollment>> fetch() async {
    try {
      final res = await _api.http.get(URL.getCourse());
      final enrollments =
          (res.data as List).map((item) => Enrollment.fromJSON(item));
      return enrollments.toList();
    } catch (e) {
      throw e;
    }
  }
}
