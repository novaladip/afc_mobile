import 'dart:async';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/features/course/api/api.dart';
import 'package:afc_mobile/features/course/domain/entities/course.dart';

part 'course_teacher_event.dart';
part 'course_teacher_state.dart';

@lazySingleton
@injectable
class CourseTeacherBloc extends Bloc<CourseTeacherEvent, CourseTeacherState> {
  final CourseApi courseApi;

  CourseTeacherBloc({
    @required this.courseApi,
  });

  @override
  CourseTeacherState get initialState => CourseTeacherStateLoading();

  @override
  Stream<CourseTeacherState> mapEventToState(
    CourseTeacherEvent event,
  ) async* {
    if (event is GetTeacherCourse) {
      yield* _mapGetTeacherCourse();
    }
  }

  Stream<CourseTeacherState> _mapGetTeacherCourse() async* {
    try {
      yield CourseTeacherStateLoading();
      final courses = await courseApi.getCourses();
      yield CourseTeacherStateLoaded(courses);
    } catch (e) {
      yield CourseTeacherStateFailure();
    }
  }
}
