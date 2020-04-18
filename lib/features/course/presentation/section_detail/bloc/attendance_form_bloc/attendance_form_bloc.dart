import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/features/course/api/api.dart';
import 'package:afc_mobile/features/course/domain/entities/section_detail.dart';
import 'package:afc_mobile/features/course/domain/entities/attendance_form.dart';
import 'package:afc_mobile/features/course/domain/entities/recognize_result.dart';

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

    if (event is SaveButtonPressed) {
      try {
        yield currentState.copyWith(isSubmiting: true);
        await courseApi.saveAttendances(currentState.attendances);
        yield currentState.copyWith(isSuccess: true);
      } catch (e) {
        yield currentState.copyWith(
          isFailure: true,
        );
      } finally {
        yield currentState.copyWith(
          isSubmiting: false,
          isFailure: false,
          isSuccess: false,
        );
      }
    }

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
        avatar: attendances[index].avatar,
      );

      yield currentState.copyWith(
        attendances: attendances,
      );
    }

    if (event is PopulateAttendanceFromSectionDetail) {
      final section = event.sectionDetail;
      final attendances = section.attendance
          .map(
            (a) => AttendanceForm(
              id: a.id,
              status: a.status,
              name: a.student.fullName,
              avatar: a.student.avatar,
            ),
          )
          .toList();

      yield currentState.copyWith(
        attendances: attendances,
      );
    }

    if (event is PopulateFromRecognizeResult) {
      final attendances = currentState.attendances.map((a) {
        final index =
            event.attendanceResult.indexWhere((n) => n.attendanceId == a.id);
        final result = event.attendanceResult[index];
        return AttendanceForm(
          id: a.id,
          name: a.name,
          avatar: a.avatar,
          status: result.isMatch ? 'M' : 'TH',
        );
      }).toList();

      yield currentState.copyWith(attendances: attendances);
    }
  }
}
