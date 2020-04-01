import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import 'package:afc_mobile/features/register/dto/dto.dart';
import 'package:afc_mobile/features/register/services/services.dart';

part 'register_event.dart';
part 'register_state.dart';

final e = DioError;

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterService registerService;

  RegisterBloc(this.registerService);

  @override
  RegisterState get initialState => RegisterInitial();

  @override
  Stream<RegisterState> mapEventToState(
    RegisterEvent event,
  ) async* {
    if (event is RegisterStudentPressed) {
      yield* _mapRegisterButtonPressed(true, event.dto);
    }

    if (event is RegisterTeacherPressed) {
      yield* _mapRegisterButtonPressed(false, event.dto);
    }
  }

  Stream<RegisterState> _mapRegisterButtonPressed(
      bool isStudent, RegisterDto dto) async* {
    yield RegisterLoading(isStudent);
    try {
      if (isStudent) {
        await registerService.registerStudent(dto);
      } else {
        await registerService.registerTeacher(dto);
      }
      yield RegisterSuccess();
    } on DioError catch (e) {
      yield RegisterFailure(e);
    }
  }
}
