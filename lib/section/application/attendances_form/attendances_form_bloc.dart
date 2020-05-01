import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:afc_mobile/section/section.dart';

part 'attendances_form_event.dart';
part 'attendances_form_state.dart';
part 'attendances_form_bloc.freezed.dart';

@lazySingleton
class AttendancesFormBloc
    extends Bloc<AttendancesFormEvent, AttendancesFormState> {
  final SectionRepository sectionRepository;
  final RecognizeFormBloc recognizeFormBloc;

  AttendancesFormBloc(
    this.sectionRepository,
    this.recognizeFormBloc,
  ) {
    recognizeFormBloc.listen(_recognizeFormListener);
  }

  _recognizeFormListener(RecognizeFormState recognizeFormState) {
    recognizeFormState.status.maybeWhen(
      orElse: () {},
      success: (result) => add(
          AttendancesFormEvent.populateFromRecognizeResult(result.attendances)),
    );
  }

  @override
  AttendancesFormState get initialState => AttendancesFormState.initial();

  @override
  Stream<AttendancesFormState> mapEventToState(
    AttendancesFormEvent event,
  ) async* {
    yield* event.map(
      onFormChange: (e) async* {
        yield* _mapOnFormChange(e.index, e.status);
      },
      populateFromSectionDetail: (e) async* {
        yield* _mapPopulateFromSectionDetail(e.sectionDetail);
      },
      populateFromRecognizeResult: (e) async* {
        yield* _mapPopulateFromRecognizeResult(e.attendances);
      },
      onSubmit: (e) async* {
        yield* _mapOnSubmit();
      },
      onClear: (e) async* {
        yield AttendancesFormState.initial();
      },
    );
  }

  Stream<AttendancesFormState> _mapOnFormChange(
      int index, String status) async* {
    print(index);
    var attendances = List<AttendanceFormDto>.from(state.attendances);
    attendances[index] = attendances[index].copyWith(
      status: status,
    );
    yield state.copyWith(attendances: attendances);
  }

  Stream<AttendancesFormState> _mapPopulateFromSectionDetail(
      SectionDetail sectionDetail) async* {
    final attendances = sectionDetail.attendances
        .map(
          (a) => AttendanceFormDto(
            id: a.id,
            avatar: a.student.avatar,
            fullName: a.student.fullName,
            status: a.status.isEmpty ? 'TH' : a.status,
          ),
        )
        .toList();
    yield state.copyWith(attendances: attendances);
  }

  Stream<AttendancesFormState> _mapPopulateFromRecognizeResult(
      List<AttendanceResult> attendances) async* {
    final newAttendances = state.attendances.map((a) {
      final index = attendances.indexWhere((d) => d.attendanceId == a.id);
      final result = attendances[index];
      return a.copyWith(
        status: result.isMatch ? 'M' : 'TH',
      );
    }).toList();

    yield state.copyWith(attendances: newAttendances);
  }

  Stream<AttendancesFormState> _mapOnSubmit() async* {
    try {
      yield state.copyWith(status: _FormStatus.submitting());
      await sectionRepository.bulkUpdateAttendances(state.attendances);
      yield state.copyWith(status: _FormStatus.success());
    } catch (e) {
      yield state.copyWith(
          status: _FormStatus.failure('Oops something went wrong'));
    } finally {
      yield state.copyWith(status: _FormStatus.initial());
    }
  }
}
