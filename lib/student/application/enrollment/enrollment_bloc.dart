import 'dart:async';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:afc_mobile/student/domain/domain.dart';
import 'package:afc_mobile/student/infrastructure/infrastructure.dart';

part 'enrollment_event.dart';
part 'enrollment_state.dart';
part 'enrollment_bloc.freezed.dart';

@lazySingleton
class EnrollmentBloc extends Bloc<EnrollmentEvent, EnrollmentState> {
  final EnrollmentRepository enrollmentRepository;

  EnrollmentBloc({
    @required this.enrollmentRepository,
  });

  @override
  EnrollmentState get initialState => EnrollmentState.initial();

  @override
  Stream<EnrollmentState> mapEventToState(
    EnrollmentEvent event,
  ) async* {
    yield* event.when(
      fetch: () async* {
        yield* _mapFetch();
      },
      newEnrollment: (enrollment) async* {
        yield* _mapNewEnrollment(enrollment);
      },
    );
  }

  Stream<EnrollmentState> _mapFetch() async* {
    try {
      yield state.copyWith(isLoading: true);
      final enrollments = await enrollmentRepository.fetchEnrollments();
      yield state.copyWith(enrollments: enrollments);
    } catch (e) {
      yield state.copyWith(isFailure: true);
    } finally {
      yield state.copyWith(isLoading: false);
    }
  }

  Stream<EnrollmentState> _mapNewEnrollment(Enrollment enrollment) async* {
    yield state.copyWith(
      enrollments: [enrollment, ...state.enrollments],
    );
  }
}
