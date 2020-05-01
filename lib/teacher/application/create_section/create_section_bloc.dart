import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:afc_mobile/teacher/teacher.dart';

part 'create_section_event.dart';
part 'create_section_state.dart';
part 'create_section_bloc.freezed.dart';

@lazySingleton
class CreateSectionBloc extends Bloc<CreateSectionEvent, CreateSectionState> {
  final CourseTeacherRepository courseTeacherRepository;

  CreateSectionBloc({
    @required this.courseTeacherRepository,
  });

  @override
  CreateSectionState get initialState => CreateSectionState.initial();

  @override
  Stream<CreateSectionState> mapEventToState(
    CreateSectionEvent event,
  ) async* {
    if (event is CreateSectionButtonPressed) {
      try {
        yield CreateSectionState.loading();
        await courseTeacherRepository.createSection(
          event.courseId,
          event.count,
        );
        yield CreateSectionState.success(event.count);
      } catch (e) {
        yield CreateSectionState.failure();
      } finally {
        yield CreateSectionState.initial();
      }
    }
  }
}
