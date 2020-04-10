import 'dart:async';

import 'package:afc_mobile/features/teacher/course/course.dart';
import 'package:afc_mobile/shared/models/models.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'course_teacher_event.dart';
part 'course_teacher_state.dart';

class CourseTeacherBloc extends Bloc<CourseTeacherEvent, CourseTeacherState> {
  final ICourseTeacherService _courseTeacherService;

  CourseTeacherBloc(this._courseTeacherService);

  @override
  CourseTeacherState get initialState => CourseTeacherLoading();

  @override
  Stream<CourseTeacherState> mapEventToState(
    CourseTeacherEvent event,
  ) async* {
    if (event is FetchCourseTeacher) {
      try {
        yield CourseTeacherLoading();
        final courses = await _courseTeacherService.fetch();
        yield CourseTeacherLoaded(courses);
      } catch (e) {
        yield CourseTeacherFailure();
      }
    }
  }
}
