import 'dart:async';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/features/course/api/api.dart';
import 'package:afc_mobile/features/course/domain/entities/course.dart';

part 'course_student_event.dart';
part 'course_student_state.dart';

@lazySingleton
class CourseStudentBloc extends Bloc<CourseStudentEvent, CourseStudentState> {
  final CourseApi courseApi;

  CourseStudentBloc({
    @required this.courseApi,
  });

  @override
  CourseStudentState get initialState => CourseStudentStateLoading();

  @override
  Stream<CourseStudentState> mapEventToState(
    CourseStudentEvent event,
  ) async* {
    if (event is GetCourseStudent) {
      yield* _mapGetCourseStudent();
    }
  }

  Stream<CourseStudentState> _mapGetCourseStudent() async* {
    try {
      yield CourseStudentStateLoading();
      final courses = await courseApi.getCourses();
      yield CourseStudentStateLoaded(courses);
    } catch (e) {
      yield CourseStudentStateFailure();
    }
  }
}
