import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/common/api/api.dart';
import 'package:afc_mobile/student/student.dart';

@lazySingleton
class EnrollmentRemoteProvider {
  final Api api;

  EnrollmentRemoteProvider({
    @required this.api,
  });

  Future<List<Enrollment>> fetchEnrollments() async {
    try {
      final res = await api.dio.get('/enrollment');
      final enrollments =
          (res.data as List).map((json) => Enrollment.fromJson(json)).toList();
      return enrollments;
    } catch (e) {
      throw e;
    }
  }

  Future<Enrollment> enrollCourse(String courseId) async {
    try {
      final res = await api.dio.post('/enrollment/$courseId');
      final enrollment = Enrollment.fromJson(res.data);
      return enrollment;
    } catch (e) {
      throw e;
    }
  }
}
