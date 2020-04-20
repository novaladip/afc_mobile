import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/features/enrollment/domain/entities/enrollment.dart';
import 'package:afc_mobile/features/enrollment/infrastructure/repositories/enrollment_repository.dart';

@lazySingleton
class EnrollmentFacadeService {
  final EnrollmentRepository enrollmentRepository;

  EnrollmentFacadeService({
    @required this.enrollmentRepository,
  });

  Future<List<Enrollment>> getEnrollments() {
    return enrollmentRepository.getEnrollments();
  }
}
