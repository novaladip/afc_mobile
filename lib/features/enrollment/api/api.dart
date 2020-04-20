import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/features/enrollment/domain/entities/enrollment.dart';
import 'package:afc_mobile/features/enrollment/application/enrollment_facade_service.dart';

@lazySingleton
class EnrollmentApi {
  final EnrollmentFacadeService enrollmentFacadeService;

  EnrollmentApi({
    @required this.enrollmentFacadeService,
  });

  Future<List<Enrollment>> getEnrollments() {
    return enrollmentFacadeService.getEnrollments();
  }
}
