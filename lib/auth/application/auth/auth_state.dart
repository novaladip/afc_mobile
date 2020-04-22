part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = _Loading;
  const factory AuthState.unauthentication() = _Unauthentication;
  const factory AuthState.authenticated(JwtPayload user) = _Authenticated;
}
