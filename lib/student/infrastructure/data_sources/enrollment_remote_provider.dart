import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/common/api/api.dart';
import 'package:afc_mobile/student/domain/domain.dart';

@lazySingleton
class EnrollmentRemoteProvider {
  final Api api;

  EnrollmentRemoteProvider({
    @required this.api,
  });

  Future<List<Enrollment>> fetchEnrollments() async {
    try {
      final res = await api.dio.get('/api/enrollment');
      final enrollments =
          (res.data as List).map((json) => Enrollment.fromJson(json)).toList();
      return enrollments;
    } catch (e) {
      throw e;
    }
  }
}
