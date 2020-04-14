import 'dart:async';
import 'package:afc_mobile/features/auth/infrastructure/models/jwt_payload_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/common/common.dart';
import 'package:afc_mobile/features/auth/api/api.dart';

part 'auth_event.dart';
part 'auth_state.dart';

@lazySingleton
@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthApi authApi;
  final Api api;

  AuthBloc({
    @required this.authApi,
    @required this.api,
  });

  @override
  AuthState get initialState => AuthStateInitial();

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    if (event is CheckAuth) {
      yield* _mapCheckAuth();
    }
  }

  Stream<AuthState> _mapCheckAuth() async* {
    try {
      final token = authApi.getToken();
      if (token == null) {
        yield AuthStateUnauthentication();
        return;
      }

      final jwtPayload = JwtPayloadModel.fromToken(token);
      if (jwtPayload.isExpired) {
        await authApi.removeToken();
        yield AuthStateUnauthentication();
        return;
      }
      api.setDefaultAuthHeader(token);
      yield AuthStateAuthentication(jwtPayload);
    } catch (e) {
      yield AuthStateUnauthentication();
    }
  }
}
