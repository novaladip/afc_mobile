import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:afc_mobile/student/student.dart';

part 'enroll_course_event.dart';
part 'enroll_course_state.dart';
part 'enroll_course_bloc.freezed.dart';

@lazySingleton
class EnrollCourseBloc extends Bloc<EnrollCourseEvent, EnrollCourseState> {
  final EnrollmentRepository enrollmentRepository;

  EnrollCourseBloc({
    @required this.enrollmentRepository,
  });

  @override
  EnrollCourseState get initialState => EnrollCourseState.idle();

  @override
  Stream<EnrollCourseState> mapEventToState(
    EnrollCourseEvent event,
  ) async* {
    if (event is EnrollCourseEvent) {
      try {
        yield EnrollCourseState.loading(event.courseId);
        final enrollment =
            await enrollmentRepository.enrollCourse(event.courseId);

        yield EnrollCourseState.success(enrollment);
      } catch (e) {
        yield EnrollCourseState.failure();
      } finally {
        yield EnrollCourseState.idle();
      }
    }
  }
}
