import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import 'package:afc_mobile/features/login/login.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginService _loginService;

  LoginBloc(this._loginService);

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
      print(bearerToken);
      yield LoginSuccess();
    } on DioError catch (e) {
      yield LoginFailure(e);
    }
  }
}
