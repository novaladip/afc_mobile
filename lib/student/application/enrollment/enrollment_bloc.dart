import 'dart:async';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:afc_mobile/auth/auth.dart';
import 'package:afc_mobile/student/student.dart';

part 'enrollment_event.dart';
part 'enrollment_state.dart';
part 'enrollment_bloc.freezed.dart';

@lazySingleton
class EnrollmentBloc extends Bloc<EnrollmentEvent, EnrollmentState> {
  final AuthBloc authBloc;
  final EnrollCourseBloc enrollCourseBloc;
  final EnrollmentRepository enrollmentRepository;

  EnrollmentBloc({
    @required this.authBloc,
    @required this.enrollmentRepository,
    @required this.enrollCourseBloc,
  }) {
    authBloc.listen(_authListener);
    enrollCourseBloc.listen(_enrollCourseListener);
  }

  _authListener(AuthState state) {
    state.maybeWhen(
      orElse: () {},
      unauthentication: () => add(EnrollmentEvent.onLoggedOut()),
    );
  }

  _enrollCourseListener(EnrollCourseState state) {
    state.maybeWhen(
      orElse: () {},
      success: (e) => add(EnrollmentEvent.newEnrollment(e)),
    );
  }

  @override
  EnrollmentState get initialState => EnrollmentState.loading();

  @override
  Stream<EnrollmentState> mapEventToState(
    EnrollmentEvent event,
  ) async* {
    yield* event.when(fetch: () async* {
      yield* _mapFetch();
    }, refresh: () async* {
      yield* _mapRefresh();
    }, newEnrollment: (enrollment) async* {
      yield* _mapNewEnrollment(enrollment);
    }, onLoggedOut: () async* {
      yield* _mapOnLoggedOut();
    });
  }

  Stream<EnrollmentState> _mapFetch() async* {
    try {
      yield EnrollmentState.loading();
      final enrollments = await enrollmentRepository.fetchEnrollments();
      yield EnrollmentState.loaded(enrollments);
    } catch (e) {
      yield EnrollmentState.failure();
    }
  }

  Stream<EnrollmentState> _mapRefresh() async* {
    var currentState = state;
    try {
      yield currentState.copyWith(
        failureType: _EnrollmentStateFailureType.none(),
        status: _EnrollmentStateStatus.refresh(),
      );

      final enrollments = await enrollmentRepository.refreshEnrollments();
      currentState = state.copyWith(enrollments: enrollments);

      yield currentState.copyWith(status: _EnrollmentStateStatus.loading());
    } catch (e) {
      yield state.copyWith(failureType: _EnrollmentStateFailureType.refresh());
    } finally {
      yield currentState.copyWith(
        failureType: _EnrollmentStateFailureType.none(),
        status: _EnrollmentStateStatus.idle(),
      );
    }
  }

  Stream<EnrollmentState> _mapNewEnrollment(Enrollment enrollment) async* {
    yield state.copyWith(
      enrollments: [enrollment, ...state.enrollments],
    );
  }

  Stream<EnrollmentState> _mapOnLoggedOut() async* {
    yield EnrollmentState.loading();
    await enrollmentRepository.destroyCache();
  }
}
