import 'dart:async';

import 'package:afc_mobile/features/teacher/add_section/dto/dto.dart';
import 'package:afc_mobile/features/teacher/add_section/services/services.dart';
import 'package:afc_mobile/features/teacher/course_detail/course_detail.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'add_section_event.dart';
part 'add_section_state.dart';

class AddSectionBloc extends Bloc<AddSectionEvent, AddSectionState> {
  final IAddSectionService _addSectionService;
  final CourseDetailBloc _courseDetailBloc;

  AddSectionBloc(
    this._addSectionService,
    this._courseDetailBloc,
  );

  @override
  AddSectionState get initialState => AddSectionInitial();

  @override
  Stream<AddSectionState> mapEventToState(
    AddSectionEvent event,
  ) async* {
    if (event is AddSectionButtonPressed) {
      try {
        yield AddSectionLoading();
        await _addSectionService.addSection(event.dto);
        _courseDetailBloc.add(RefreshCourseDetail());
        yield AddSectionSuccess();
      } catch (e) {
        yield AddSectionFailure();
      } finally {
        yield AddSectionInitial();
      }
    }
  }
}
