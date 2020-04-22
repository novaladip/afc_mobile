import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/auth/domain/domain.dart';
import 'package:afc_mobile/auth/domain/entity/login_dto.dart';
import 'package:afc_mobile/auth/infrastructure/data_sources/data_sources.dart';

@lazySingleton
class AuthRepository implements AuthInterface {
  final AuthRemoteProvider authRemoteProvider;
  final AuthLocalProvider authLocalProvider;

  AuthRepository({
    @required this.authRemoteProvider,
    @required this.authLocalProvider,
  });

  @override
  Future<String> getAccessToken(LoginDto dto) {
    return authRemoteProvider.getAccessToken(dto);
  }

  @override
  String getToken() {
    return authLocalProvider.getToken();
  }

  @override
  Future<void> persistToken(String token) {
    return authLocalProvider.persistToken(token);
  }

  @override
  Future<void> removeToken() {
    return authLocalProvider.removeToken();
  }

  @override
  void setDefaultAuthHeader(String token) {
    authLocalProvider.setDefaultAuthHeader(token);
  }
}
