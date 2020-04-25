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

  CourseTeacherBloc({
    @required this.courseTeacherRepository,
  });

  @override
  CourseTeacherState get initialState => CourseTeacherState.loading();

  @override
  Stream<CourseTeacherState> mapEventToState(
    CourseTeacherEvent event,
  ) async* {
    yield* event.when(
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
