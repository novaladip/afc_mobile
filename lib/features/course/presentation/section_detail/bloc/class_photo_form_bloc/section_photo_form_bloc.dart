import 'dart:io';
import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/features/course/api/api.dart';

part 'section_photo_form_event.dart';
part 'section_photo_form_state.dart';

@lazySingleton
@injectable
class SectionPhotoFormBloc
    extends Bloc<SectionPhotoFormEvent, SectionPhotoFormState> {
  final CourseApi courseApi;

  SectionPhotoFormBloc({
    @required this.courseApi,
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
      yield currentState.copyWith(photo: '');
    }
  }
}
