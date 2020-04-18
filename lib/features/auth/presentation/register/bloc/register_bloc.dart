import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/common/common.dart';
import 'package:afc_mobile/features/auth/api/api.dart';
import 'package:afc_mobile/features/auth/infrastructure/models/register_dto_model.dart';
import 'package:meta/meta.dart';

part 'register_event.dart';
part 'register_state.dart';

@lazySingleton
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthApi authApi;

  RegisterBloc({
    @required this.authApi,
  });

  @override
  RegisterState get initialState => RegisterStateInitial();

  @override
  Stream<RegisterState> mapEventToState(
    RegisterEvent event,
  ) async* {
    if (event is RegisterButtonPressed) {
      yield* _mapRegisterButtonPressed(event.dto, event.registerAs);
    }
  }

  Stream<RegisterState> _mapRegisterButtonPressed(
      RegisterDtoModel dto, String registerAs) async* {
    try {
      if (registerAs == Role.student) {
        yield RegisterStateLoading(
          teacherLoading: false,
          studentLoading: false,
        );
        await authApi.registerStudent(dto);
      }

      if (registerAs == Role.teacher) {
        yield RegisterStateLoading(
          teacherLoading: true,
          studentLoading: false,
        );
        await authApi.registerTeacher(dto);
      }

      yield RegisterStateSuccess();
    } catch (e) {
      yield RegisterStateFailure();
    } finally {
      yield RegisterStateInitial();
    }
  }
}
