import 'dart:io';
import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/features/course/api/api.dart';
import 'package:afc_mobile/features/course/domain/entities/recognize_result.dart';
import 'package:afc_mobile/features/course/presentation/section_detail/bloc/attendance_form_bloc/attendance_form_bloc.dart';

part 'section_photo_form_event.dart';
part 'section_photo_form_state.dart';

@lazySingleton
@injectable
class SectionPhotoFormBloc
    extends Bloc<SectionPhotoFormEvent, SectionPhotoFormState> {
  final CourseApi courseApi;
  final AttendanceFormBloc attendanceFormBloc;

  SectionPhotoFormBloc({
    @required this.courseApi,
    @required this.attendanceFormBloc,
  });

  @override
  SectionPhotoFormState get initialState => SectionPhotoFormState.initial();

  @override
  Stream<SectionPhotoFormState> mapEventToState(
    SectionPhotoFormEvent event,
  ) async* {
    final currentState = state;

    if (event is OnChangePhotoForm) {
      yield currentState.copyWith(photo: event.photo.path);
    }

    if (event is ClearPhotoForm) {
      yield SectionPhotoFormState.initial();
    }

    if (event is RecognizeButtonPressed) {
      yield* _mapRecognizeButtonPressed(currentState, event.sectionId);
    }
  }

  Stream<SectionPhotoFormState> _mapRecognizeButtonPressed(
      SectionPhotoFormState currentState, String sectionId) async* {
    try {
      yield currentState.copyWith(isSubmiting: true, isFailure: false);
      final recognizeResult = await courseApi.recognizeStudent(
        sectionId,
        File(currentState.photoPath),
      );

      attendanceFormBloc
          .add(PopulateFromRecognizeResult(recognizeResult.attendancesResult));

      final newState = currentState.copyWith(
        result: recognizeResult,
        isSuccess: true,
      );

      yield newState;

      // Cleaning up state
      yield newState.copyWith(
        isSuccess: false,
        isFailure: false,
        isSubmiting: false,
      );
    } catch (e) {
      yield currentState.copyWith(
        isFailure: true,
        isSuccess: false,
        isSubmiting: false,
      );
    }
  }
}
