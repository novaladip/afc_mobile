import 'dart:async';
import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/features/course/api/api.dart';
import 'package:afc_mobile/features/course/domain/entities/course_detail.dart';

part 'course_detail_event.dart';
part 'course_detail_state.dart';

@lazySingleton
@injectable
class CourseDetailBloc extends Bloc<CourseDetailEvent, CourseDetailState> {
  final CourseApi courseApi;

  CourseDetailBloc({
    @required this.courseApi,
  });

  @override
  CourseDetailState get initialState => CourseDetailState.loading();

  @override
  Stream<CourseDetailState> mapEventToState(
    CourseDetailEvent event,
  ) async* {
    final currentState = state;

    if (event is GetCourseDetail) {
      yield* _mapGetCourseDetail(event.courseId);
    }

    if (event is RefreshCourseDetail) {
      if (currentState.course != null) {
        _mapRefreshCourseDetail(currentState.course);
      }
    }

    if (event is ClearCourseDetailState) {
      yield CourseDetailState.loading();
    }
  }

  Stream<CourseDetailState> _mapGetCourseDetail(String courseId) async* {
    try {
      yield CourseDetailState.loading();
      final course = await courseApi.getCourseDetail(courseId);
      yield CourseDetailState.loaded(course);
    } catch (e) {
      yield CourseDetailState.failure();
    }
  }

  Stream<CourseDetailState> _mapRefreshCourseDetail(
    CourseDetail course,
  ) async* {
    try {
      yield CourseDetailState.refresh(course);
      final updatedCourse = await courseApi.getCourseDetail(course.id);
      yield CourseDetailState.loaded(updatedCourse);
    } catch (e) {
      yield CourseDetailState.refreshFailure(course);
    }
  }
}
