import 'dart:async';

import 'package:afc_mobile/features/teacher/course_detail/services/services.dart';
import 'package:afc_mobile/shared/models/models.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'course_detail_event.dart';
part 'course_detail_state.dart';

class CourseDetailBloc extends Bloc<CourseDetailEvent, CourseDetailState> {
  final ICourseDetailService _courseDetailService;

  CourseDetailBloc(this._courseDetailService);

  @override
  CourseDetailState get initialState => CourseDetailLoading();

  @override
  Stream<CourseDetailState> mapEventToState(
    CourseDetailEvent event,
  ) async* {
    if (event is FetchCourseDetail) {
      try {
        yield CourseDetailLoading();
        final courseDetail = await _courseDetailService.fetch(event.courseId);
        await Future.delayed(Duration(seconds: 2));
        yield CourseDetailLoaded(courseDetail);
      } catch (e) {
        yield CourseDetailFailure();
      }
    }
  }
}
