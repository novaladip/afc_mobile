import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/features/enrollment/domain/entities/enrollment.dart';
import 'package:afc_mobile/features/enrollment/domain/interfaces/enrollment_interface.dart';
import 'package:afc_mobile/features/enrollment/infrastructure/data_sources/enrollment_remote_data_provider.dart';

@lazySingleton
class EnrollmentRepository implements EnrollmentInterface {
  final EnrollmentRemoteDataProvider enrollmentRemoteDataProvider;

  EnrollmentRepository({
    @required this.enrollmentRemoteDataProvider,
  });

  @override
  Future<List<Enrollment>> getEnrollments() {
    return enrollmentRemoteDataProvider.fetchEnrollments();
  }
}
