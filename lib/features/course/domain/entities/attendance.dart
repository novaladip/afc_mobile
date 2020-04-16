import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:afc_mobile/shared/entities/entities.dart';

class Attendance extends Equatable {
  final String id;
  final String status;
  final User student;

  Attendance({
    @required this.id,
    @required this.status,
    @required this.student,
  });

  @override
  List<Object> get props => [id, status, student];
}
