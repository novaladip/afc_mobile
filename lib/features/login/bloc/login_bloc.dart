import 'dart:async';
import 'package:afc_mobile/features/auth/bloc/auth_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import 'package:afc_mobile/features/login/login.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginService _loginService;
  final AuthBloc _authBloc;

  LoginBloc(
    this._loginService,
    this._authBloc,
  );

  @override
  LoginState get initialState => LoginInitial();

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is LoginButtonPressed) {
      yield* _mapLoginButtonPressed(event.dto);
    }
  }

  Stream<LoginState> _mapLoginButtonPressed(LoginDto dto) async* {
    try {
      yield LoginLoading();
      final bearerToken = await _loginService(dto);
      // @TODO store bearer token with sharedPreferences
      _authBloc.add(LoggedIn(bearerToken));
    } on DioError catch (e) {
      yield LoginFailure(e);
    }
  }
}
