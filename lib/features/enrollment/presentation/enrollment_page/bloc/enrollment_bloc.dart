import 'dart:async';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/features/enrollment/api/api.dart';
import 'package:afc_mobile/features/enrollment/domain/entities/enrollment.dart';

part 'enrollment_event.dart';
part 'enrollment_state.dart';

@lazySingleton
class EnrollmentBloc extends Bloc<EnrollmentEvent, EnrollmentState> {
  final EnrollmentApi enrollmentApi;

  EnrollmentBloc({
    @required this.enrollmentApi,
  });

  @override
  EnrollmentState get initialState => EnrollmentState.initial();

  @override
  Stream<EnrollmentState> mapEventToState(
    EnrollmentEvent event,
  ) async* {
    if (event is GetEnrollment) {
      yield* _mapGetEnrollment();
    }
  }

  Stream<EnrollmentState> _mapGetEnrollment() async* {
    try {
      yield EnrollmentState.initial();
      final enrollments = await enrollmentApi.getEnrollments();
      yield EnrollmentState.loaded(enrollments);
    } catch (e) {
      yield EnrollmentState.failure();
    }
  }
}
