import 'dart:async';
import 'package:afc_mobile/auth/auth.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:afc_mobile/auth/domain/entity/entity.dart';
import 'package:afc_mobile/auth/infrastructure/infrastructure.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@lazySingleton
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthBloc authBloc;
  final AuthRepository authRepository;

  LoginBloc({
    @required this.authBloc,
    @required this.authRepository,
  });

  @override
  LoginState get initialState => LoginState.initial();

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    yield* event.when(
      changeEmail: (email) async* {
        yield state.copyWith(email: email);
      },
      changePassword: (password) async* {
        yield state.copyWith(password: password);
      },
      submit: () async* {
        yield* _mapSubmit();
      },
    );
  }

  Stream<LoginState> _mapSubmit() async* {
    try {
      yield state.copyWith(isSubmitting: true);
      final token = await authRepository.getAccessToken(
        LoginDto(email: state.email, password: state.password),
      );
      authBloc.add(AuthEvent.loggedIn(token));
    } catch (e) {
      yield state.copyWith(isFailure: true);
    } finally {
      yield state.copyWith(isSubmitting: false, isFailure: false);
    }
  }
}
