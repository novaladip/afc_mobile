import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class AttendanceForm extends Equatable {
  final String id;
  final String status;
  final String name;

  AttendanceForm({
    @required this.id,
    @required this.status,
    @required this.name,
  });

  @override
  List<Object> get props => [id, status, name];

  get toJson {
    return json
        .decode({'id': 'id', 'status': 'status', 'name': name}.toString());
  }
}
