import 'dart:io';
import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:afc_mobile/auth/auth.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

@lazySingleton
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final AuthRepository authRepository;

  RegisterBloc(this.authRepository);

  @override
  RegisterState get initialState => RegisterState.initial();

  @override
  Stream<RegisterState> mapEventToState(
    RegisterEvent event,
  ) async* {
    yield* event.when(
      changeEmail: (email) async* {
        yield state.copyWith(email: email.toLowerCase().trim());
      },
      changeFirstName: (firstName) async* {
        yield state.copyWith(firstName: firstName);
      },
      changeLastName: (lastName) async* {
        yield state.copyWith(lastName: lastName);
      },
      changePassword: (password) async* {
        yield state.copyWith(password: password);
      },
      changeAvatarPath: (avatarPath) async* {
        yield state.copyWith(avatarPath: avatarPath);
      },
      submit: _mapSubmit,
      clearForm: () async* {
        yield RegisterState.initial();
      },
    );
  }

  Stream<RegisterState> _mapSubmit(bool teacher) async* {
    try {
      yield state.copyWith(isSubmitting: false);
      await authRepository.register(
        RegisterDto(
          email: state.email,
          firstName: state.firstName,
          lastName: state.lastName,
          password: state.password,
          avatar: File(state.avatarPath),
        ),
        teacher,
      );
      yield state.copyWith(isSuccess: true);
    } catch (e) {
      yield state.copyWith(isFailure: true);
    } finally {
      yield state.copyWith(
        isSubmitting: false,
        isSuccess: false,
      );
    }
  }
}
