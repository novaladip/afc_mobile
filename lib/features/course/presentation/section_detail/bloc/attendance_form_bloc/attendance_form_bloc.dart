import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/features/course/api/api.dart';
import 'package:afc_mobile/features/course/domain/entities/section_detail.dart';
import 'package:afc_mobile/features/course/domain/entities/attendance_form.dart';

part 'attendance_form_event.dart';
part 'attendance_form_state.dart';

@lazySingleton
class AttendanceFormBloc
    extends Bloc<AttendanceFormEvent, AttendanceFormState> {
  final CourseApi courseApi;

  AttendanceFormBloc({
    @required this.courseApi,
  });

  @override
  AttendanceFormState get initialState => AttendanceFormState.initial();

  @override
  Stream<AttendanceFormState> mapEventToState(
    AttendanceFormEvent event,
  ) async* {
    final currentState = state;

    if (event is ClearAttendanceFormState) {
      yield AttendanceFormState.initial();
    }

    if (event is OnChangeAttendanceStatus) {
      final index = event.index;
      var attendances = List<AttendanceForm>.from(currentState.attendances);
      attendances[event.index] = AttendanceForm(
        name: attendances[index].name,
        id: attendances[index].id,
        status: event.status,
      );

      yield currentState.copyWith(
        attendances: attendances,
      );
    }

    if (event is PopulateAttendanceFromSectionDetail) {
      final section = event.sectionDetail;
      final attendances = section.attendance
          .map((a) => AttendanceForm(
              id: a.id, status: a.status, name: a.student.fullName))
          .toList();

      yield currentState.copyWith(
        attendances: attendances,
      );
    }
  }
}
