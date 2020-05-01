import 'dart:convert';
import 'package:jaguar_jwt/jaguar_jwt.dart';

Map<String, dynamic> decodeToken(String token) {
  final parts = token.split('.');
  final payload = parts[1];
  final decoded = B64urlEncRfc7515.decodeUtf8(payload);
  final parsedPayload = json.decode(decoded);
  return parsedPayload;
}
