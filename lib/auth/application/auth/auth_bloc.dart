import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:afc_mobile/auth/auth.dart';
import 'package:afc_mobile/common/utils/utils.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc(this.authRepository);

  @override
  AuthState get initialState => AuthState.initial();

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.when(
      appStarted: () async* {
        yield* _mapAppStarted();
      },
      loggedIn: (token) async* {
        yield* _mapLoggedIn(token);
      },
      loggedOut: () async* {
        yield* _mapLoggedOut();
      },
    );
  }

  Stream<AuthState> _mapAppStarted() async* {
    final token = authRepository.getToken();
    if (token == null) {
      yield AuthState.unauthentication();
      return;
    }

    final decodedToken = decodeToken(token);
    final jwtPayload = JwtPayload(
      id: decodedToken['identity']['id'],
      role: decodedToken['identity']['role'],
      email: decodedToken['identity']['email'],
      exp: decodedToken['exp'],
    );

    if (jwtPayload.isExpired) {
      yield AuthState.unauthentication();
      await authRepository.removeToken();
      return;
    }

    authRepository.setDefaultAuthHeader(token);
    yield AuthState.authenticated(jwtPayload);
  }

  Stream<AuthState> _mapLoggedIn(String token) async* {
    await authRepository.persistToken(token);
    authRepository.setDefaultAuthHeader(token);
    final decodedToken = decodeToken(token);
    yield AuthState.authenticated(
      JwtPayload(
        id: decodedToken['identity']['id'],
        role: (decodedToken['identity']['role'] as String).toLowerCase(),
        email: decodedToken['identity']['email'],
        exp: decodedToken['exp'],
      ),
    );
  }

  Stream<AuthState> _mapLoggedOut() async* {
    await authRepository.removeToken();
    authRepository.setDefaultAuthHeader("");
    yield AuthState.unauthentication();
  }
}
