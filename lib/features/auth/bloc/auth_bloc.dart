import 'dart:async';

import 'package:afc_mobile/features/auth/auth.dart';
import 'package:afc_mobile/features/auth/models/models.dart';
import 'package:afc_mobile/features/auth/services/services.dart';
import 'package:afc_mobile/shared/utils/utils.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService _authService;
  final Api _api;

  AuthBloc(
    this._authService,
    this._api,
  );

  @override
  AuthState get initialState => AuthUninitialized();

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is AppStarted) {
      yield* _mapAppStarted();
    }

    if (event is LoggedIn) {
      yield* _mapLoggedIn(event.token);
    }

    if (event is LoggedOut) {
      yield* _mapLoggedOut();
    }
  }

  Stream<AuthState> _mapAppStarted() async* {
    try {
      yield AuthLoading();
      final token = _authService.getToken();
      if (token == null) {
        yield AuthUnauthenticated();
        return;
      }

      final jwtPayload = _authService.decodeToken(token);
      if (jwtPayload.isExpired) {
        await _authService.removeToken();
        yield AuthUnauthenticated();
        return;
      }
      _api.setDefaultAuthHeader(token);
      yield AuthAuthenticated(jwtPayload);
    } catch (e) {
      yield AuthUnauthenticated();
    }
  }

  Stream<AuthState> _mapLoggedIn(String token) async* {
    yield AuthLoading();
    await _authService.persistToken(token);
    _api.setDefaultAuthHeader(token);
    yield AuthAuthenticated(_authService.decodeToken(token));
  }

  Stream<void> _mapLoggedOut() async* {
    yield AuthLoading();
    await _authService.removeToken();
    _api.removeDefaultAuthHeader();
    yield AuthUnauthenticated();
  }
}
