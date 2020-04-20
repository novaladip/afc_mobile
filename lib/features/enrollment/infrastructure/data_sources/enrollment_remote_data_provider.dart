import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/common/common.dart';
import 'package:afc_mobile/features/enrollment/infrastructure/models/enrollment_model.dart';

@lazySingleton
class EnrollmentRemoteDataProvider {
  final Api api;

  const EnrollmentRemoteDataProvider({
    @required this.api,
  });

  Future<List<EnrollmentModel>> fetchEnrollments() async {
    try {
      final res = await api.dio.get('/enrollment');
      final enrollments =
          (res.data as List).map((e) => EnrollmentModel.fromJson(e)).toList();
      return enrollments;
    } catch (e) {
      throw e;
    }
  }
}
