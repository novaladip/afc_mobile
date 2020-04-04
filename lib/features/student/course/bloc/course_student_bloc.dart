import 'dart:async';

import 'package:afc_mobile/features/student/course/course.dart';
import 'package:afc_mobile/features/student/course/services/services.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

part 'course_student_event.dart';
part 'course_student_state.dart';

class CourseStudentBloc extends Bloc<CourseStudentEvent, CourseStudentState> {
  final ICourseStudentService _courseStudentService;

  CourseStudentBloc(this._courseStudentService);

  @override
  CourseStudentState get initialState => CourseStudentLoading();

  @override
  Stream<CourseStudentState> mapEventToState(
    CourseStudentEvent event,
  ) async* {
    if (event is FetchCourseStudent) {
      yield* _mapFetchCourseStudent();
    }
  }

  Stream<CourseStudentState> _mapFetchCourseStudent() async* {
    try {
      yield CourseStudentLoading();
      final courses = await _courseStudentService.fetch();
      yield CourseStudentLoaded(courses);
    } on DioError catch (_) {
      yield CourseStudentFailure();
    }
  }
}
