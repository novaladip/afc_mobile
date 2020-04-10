import 'dart:async';

import 'package:afc_mobile/features/student/enrollment/services/services.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:afc_mobile/features/student/enrollment/dto/dto.dart';
import 'package:afc_mobile/shared/models/models.dart';

part 'enrollment_event.dart';
part 'enrollment_state.dart';

class EnrollmentBloc extends Bloc<EnrollmentEvent, EnrollmentState> {
  final IEnrollmentService _enrollmentService;

  EnrollmentBloc(this._enrollmentService);

  @override
  EnrollmentState get initialState => EnrollmentState.initial();

  @override
  Stream<EnrollmentState> mapEventToState(
    EnrollmentEvent event,
  ) async* {
    if (event is FetchEnrollment) {
      yield* _mapFetchEnrollment();
    }
  }

  Stream<EnrollmentState> _mapFetchEnrollment() async* {
    try {
      yield EnrollmentState.loading();
      final enrollments = await _enrollmentService.fetch();
      yield EnrollmentState.loaded(enrollments);
    } catch (e) {
      print(e);
      yield EnrollmentState.falure();
    }
  }
}
