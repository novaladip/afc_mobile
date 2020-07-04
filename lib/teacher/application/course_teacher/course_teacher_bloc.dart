import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:afc_mobile/teacher/teacher.dart';
import 'package:afc_mobile/common/models/models.dart';

part 'course_teacher_event.dart';
part 'course_teacher_state.dart';
part 'course_teacher_bloc.freezed.dart';

@lazySingleton
class CourseTeacherBloc extends Bloc<CourseTeacherEvent, CourseTeacherState> {
  final CourseTeacherRepository courseTeacherRepository;
  final AddCourseBloc addCourseBloc;

  CourseTeacherBloc({
    @required this.courseTeacherRepository,
    @required this.addCourseBloc,
  }) : super(CourseTeacherState.loading()) {
    addCourseBloc.listen(_addCourseListener);
  }

  _addCourseListener(AddCourseState state) {
    state.status.maybeWhen(
      orElse: () {},
      success: (course) => add(CourseTeacherEvent.newCourse(course)),
    );
  }

  @override
  Stream<CourseTeacherState> mapEventToState(
    CourseTeacherEvent event,
  ) async* {
    yield* event.when(
      newCourse: (course) async* {
        yield* state.maybeWhen(
          orElse: () async* {},
          loaded: (c) async* {
            yield CourseTeacherState.loaded([course, ...c]);
          },
        );
      },
      fetchCourses: () async* {
        yield* _mapFetchCourses();
      },
      refreshCourses: () async* {
        yield* _mapRefreshCourses();
      },
      onLoggedOut: () async* {
        yield CourseTeacherState.loading();
      },
    );
  }

  Stream<CourseTeacherState> _mapFetchCourses() async* {
    try {
      yield CourseTeacherState.loading();
      final courses = await courseTeacherRepository.fetchCourses();
      yield CourseTeacherState.loaded(courses);
    } catch (e) {
      yield CourseTeacherState.failure();
    }
  }

  Stream<CourseTeacherState> _mapRefreshCourses() async* {}
}
