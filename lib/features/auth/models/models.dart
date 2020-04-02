import 'package:flutter/widgets.dart';
import 'package:equatable/equatable.dart';

class JwtPayload extends Equatable {
  final int exp;
  final String id;
  final String email;
  final String role;

  const JwtPayload({
    @required this.exp,
    @required this.email,
    @required this.id,
    @required this.role,
  });

  bool get isExpired {
    final date = DateTime.fromMillisecondsSinceEpoch(exp * 1000);
    return !date.isAfter(DateTime.now());
  }

  @override
  List<Object> get props => [exp, id, email, role];
}
