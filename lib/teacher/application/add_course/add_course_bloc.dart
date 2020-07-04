import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:afc_mobile/teacher/teacher.dart';
import 'package:afc_mobile/common/models/models.dart';

part 'add_course_event.dart';
part 'add_course_state.dart';
part 'add_course_bloc.freezed.dart';

@lazySingleton
class AddCourseBloc extends Bloc<AddCourseEvent, AddCourseState> {
  final CourseTeacherRepository courseTeacherRepository;

  AddCourseBloc({
    @required this.courseTeacherRepository,
  }) : super(AddCourseState.initial());

  @override
  Stream<AddCourseState> mapEventToState(
    AddCourseEvent event,
  ) async* {
    yield* event.map(
      changeName: (e) async* {
        yield state.copyWith.createCourseDto(name: e.name);
      },
      changeCloseDate: (e) async* {
        yield state.copyWith.createCourseDto(closeDate: e.date);
      },
      submit: (e) async* {
        yield* _mapSubmit(state.createCourseDto);
      },
      clearForm: (e) async* {},
    );
  }

  Stream<AddCourseState> _mapSubmit(CreateCourseDto dto) async* {
    try {
      yield state.copyWith(status: FormStatus.submitting());
      final course = await courseTeacherRepository.createCourse(dto);
      yield state.copyWith(status: FormStatus.success(course));
    } catch (e) {
      yield state.copyWith(status: FormStatus.failure());
    } finally {
      yield state.copyWith(status: FormStatus.initial());
    }
  }
}
