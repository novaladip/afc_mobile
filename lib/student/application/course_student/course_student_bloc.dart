import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:afc_mobile/student/student.dart';
import 'package:afc_mobile/common/models/models.dart';

part 'course_student_event.dart';
part 'course_student_state.dart';
part 'course_student_bloc.freezed.dart';

@lazySingleton
class CourseStudentBloc extends Bloc<CourseStudentEvent, CourseStudentState> {
  final CourseStudentRepository courseStudentRepository;

  CourseStudentBloc({
    @required this.courseStudentRepository,
  });

  @override
  CourseStudentState get initialState => CourseStudentState.loading();

  @override
  Stream<CourseStudentState> mapEventToState(
    CourseStudentEvent event,
  ) async* {
    yield* event.when(
      fetch: () async* {
        yield* _mapFetch();
      },
      refresh: () async* {},
    );
  }

  Stream<CourseStudentState> _mapFetch() async* {
    try {
      yield CourseStudentState.loading();
      final courses = await courseStudentRepository.fetchCourses();
      yield CourseStudentState.loaded(courses);
    } catch (e) {
      yield CourseStudentState.failure();
    }
  }
}
