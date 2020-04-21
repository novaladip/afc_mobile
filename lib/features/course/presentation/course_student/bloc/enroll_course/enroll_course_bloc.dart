import 'dart:async';

import 'package:afc_mobile/features/course/api/api.dart';
import 'package:afc_mobile/features/enrollment/presentation/enrollment_page/bloc/enrollment_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'enroll_course_event.dart';
part 'enroll_course_state.dart';

@lazySingleton
class EnrollCourseBloc extends Bloc<EnrollCourseEvent, EnrollCourseState> {
  final CourseApi courseApi;
  final EnrollmentBloc enrollmentBloc;

  EnrollCourseBloc({
    @required this.courseApi,
    @required this.enrollmentBloc,
  });

  @override
  EnrollCourseState get initialState => EnrollCourseStateInitial();

  @override
  Stream<EnrollCourseState> mapEventToState(
    EnrollCourseEvent event,
  ) async* {
    if (event is EnrollCourseButtonPressed) {
      try {
        yield EnrollCourseStateLoading(event.courseId);
        final enrollment = await courseApi.enrollCourse(event.courseId);
        enrollmentBloc.add(NewEnrollment(enrollment));
        yield EnrollCourseStateSuccess();
      } catch (e) {
        yield EnrollCourseStateFailure();
      } finally {
        yield EnrollCourseStateInitial();
      }
    }
  }
}
