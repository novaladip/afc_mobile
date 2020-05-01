import 'package:freezed_annotation/freezed_annotation.dart';

part 'jwt_payload.freezed.dart';

@freezed
abstract class JwtPayload with _$JwtPayload {
  factory JwtPayload({
    @required String id,
    @required String email,
    @required String role,
    @required int exp,
  }) = _JwtPayload;

  @late
  bool get isExpired =>
      DateTime.fromMillisecondsSinceEpoch(exp * 1000).isBefore(DateTime.now());
}
