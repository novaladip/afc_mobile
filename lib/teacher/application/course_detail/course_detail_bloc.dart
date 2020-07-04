import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:afc_mobile/teacher/teacher.dart';

part 'course_detail_event.dart';
part 'course_detail_state.dart';
part 'course_detail_bloc.freezed.dart';

@lazySingleton
class CourseDetailBloc extends Bloc<CourseDetailEvent, CourseDetailState> {
  final CourseTeacherRepository courseTeacherRepository;
  final CreateSectionBloc createSectionBloc;

  CourseDetailBloc({
    @required this.courseTeacherRepository,
    @required this.createSectionBloc,
  }) : super(CourseDetailState.loading()) {
    createSectionBloc.listen(_createSectionListener);
  }

  _createSectionListener(CreateSectionState state) {
    state.maybeWhen(
      orElse: () {},
      success: (count) {
        final now = DateTime.now().toString();
        add(
          CourseDetailEvent.newSection(
            Section(
              count: count,
              id: '',
              date: now,
            ),
          ),
        );
      },
    );
  }

  @override
  Stream<CourseDetailState> mapEventToState(
    CourseDetailEvent event,
  ) async* {
    yield* event.when(
      fetch: (courseId) async* {
        yield* _mapFetch(courseId);
      },
      refresh: () async* {},
      newSection: (section) async* {
        yield* _mapNewSection(section);
      },
    );
  }

  Stream<CourseDetailState> _mapNewSection(Section section) async* {
    yield* state.maybeWhen(
      orElse: () async* {},
      loaded: (course, status) async* {
        yield CourseDetailState.loaded(
          course: course.copyWith(sections: [...course.sections, section]),
          status: Status.idle(),
        );
      },
    );
  }

  Stream<CourseDetailState> _mapFetch(String courseId) async* {
    try {
      yield CourseDetailState.loading();
      final course = await courseTeacherRepository.fetchCourse(courseId);
      yield CourseDetailState.loaded(
        course: course,
        status: Status.idle(),
      );
    } catch (e) {
      yield CourseDetailState.failure();
    }
  }
}
