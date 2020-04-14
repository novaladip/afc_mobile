import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class JwtPayload extends Equatable {
  final String id;
  final int exp;
  final String email;
  final String role;

  JwtPayload({
    @required this.id,
    @required this.email,
    @required this.exp,
    @required this.role,
  });

  @override
  List<Object> get props => [id, exp, email, role];
}
