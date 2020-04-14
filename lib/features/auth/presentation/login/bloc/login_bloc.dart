import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/features/auth/api/api.dart';
import 'package:afc_mobile/features/auth/infrastructure/models/login_dto_model.dart';

part 'login_event.dart';
part 'login_state.dart';

@lazySingleton
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthApi authApi;

  LoginBloc({
    @required this.authApi,
  });

  @override
  LoginState get initialState => LoginStateInitial();

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is LoginButtonPressed) {
      yield* _loginButtonPressed(event.dto);
    }
  }

  Stream<LoginState> _loginButtonPressed(LoginDtoModel dto) async* {
    try {
      yield LoginStateLoading();
      final accessToken = await authApi.getAccessToken(dto);
      print(accessToken);
      yield LoginStateSuccess();
    } catch (e) {
      yield LoginStateFailure();
    } finally {
      yield LoginStateInitial();
    }
  }
}
