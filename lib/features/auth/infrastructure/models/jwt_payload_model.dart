import 'dart:convert';
import 'package:meta/meta.dart';
import 'package:jaguar_jwt/jaguar_jwt.dart';

import 'package:afc_mobile/features/auth/domain/entities/jwt_payload.dart';

class JwtPayloadModel extends JwtPayload {
  JwtPayloadModel({
    @required String id,
    @required String email,
    @required int exp,
    @required String role,
  }) : super(id: id, email: email, exp: exp, role: role);

  factory JwtPayloadModel.fromToken(String token) {
    final parts = token.split('.');
    final payload = parts[1];
    final decoded = B64urlEncRfc7515.decodeUtf8(payload);
    final parsedPayload = json.decode(decoded);

    return JwtPayloadModel(
      exp: parsedPayload['exp'],
      id: parsedPayload['identity']['id'],
      role: parsedPayload['identity']['role'],
      email: parsedPayload['identity']['email'],
    );
  }

  bool get isExpired {
    final date = DateTime.fromMillisecondsSinceEpoch(exp * 1000);
    return !date.isAfter(DateTime.now());
  }
}
