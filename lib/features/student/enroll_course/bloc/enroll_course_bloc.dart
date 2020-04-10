import 'dart:async';

import 'package:afc_mobile/features/student/enroll_course/services/services.dart';
import 'package:afc_mobile/features/student/enrollment/enrollment.dart';
import 'package:afc_mobile/shared/models/models.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'enroll_course_event.dart';
part 'enroll_course_state.dart';

class EnrollCourseBloc extends Bloc<EnrollCourseEvent, EnrollCourseState> {
  final IEnrollCourseService enrollCourseService;
  final EnrollmentBloc enrollmentBloc;

  EnrollCourseBloc({
    @required this.enrollCourseService,
    @required this.enrollmentBloc,
  });

  @override
  EnrollCourseState get initialState => EnrollCourseInitial();

  @override
  Stream<EnrollCourseState> mapEventToState(
    EnrollCourseEvent event,
  ) async* {
    if (event is EnrollCourseButtonPressed) {
      yield* _mapEnrollCourseButtonPressed(event.courseId);
    }
  }

  Stream<EnrollCourseState> _mapEnrollCourseButtonPressed(
      String courseId) async* {
    try {
      yield EnrollCourseLoading(courseId);
      final enrollment = await enrollCourseService.enroll(courseId);
      yield EnrollCourseSuccess(enrollment);
      enrollmentBloc.add(NewEnrollment(enrollment));
    } catch (e) {
      yield EnrollCourseFailure();
    } finally {
      yield EnrollCourseInitial();
    }
  }
}
