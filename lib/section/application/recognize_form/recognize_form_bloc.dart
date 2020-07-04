import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:afc_mobile/section/section.dart';

part 'recognize_form_event.dart';
part 'recognize_form_state.dart';
part 'recognize_form_bloc.freezed.dart';

@lazySingleton
class RecognizeFormBloc extends Bloc<RecognizeFormEvent, RecognizeFormState> {
  final SectionRepository sectionRepository;

  RecognizeFormBloc({
    @required this.sectionRepository,
  }) : super(RecognizeFormState.initial());

  @override
  Stream<RecognizeFormState> mapEventToState(
    RecognizeFormEvent event,
  ) async* {
    yield* event.map(
      clear: (e) async* {
        yield* _mapClear();
      },
      photoChange: (e) async* {
        yield state.copyWith(photoPath: e.photoPath);
      },
      submit: (e) async* {
        yield* _mapSubmit(e.sectionId);
      },
    );
  }

  Stream<RecognizeFormState> _mapClear() async* {
    yield state.copyWith(
      photoPath: '',
      result: null,
      status: _FormStatus.initial(),
    );
  }

  Stream<RecognizeFormState> _mapSubmit(String sectionId) async* {
    try {
      yield state.copyWith(
        status: _FormStatus.submitting(),
      );
      final result =
          await sectionRepository.recognizeStudent(sectionId, state.photoPath);
      yield state.copyWith(
        status: _FormStatus.success(result),
        result: result,
      );
    } catch (e) {
      yield state.copyWith(status: _FormStatus.failure());
    }
  }
}
