import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

import 'package:afc_mobile/shared/entities/entities.dart';

class Course extends Equatable {
  final String id;
  final String closeDate;
  final String createdAt;
  final String name;
  final String teacherId;
  final User teacher;

  Course({
    @required this.id,
    @required this.closeDate,
    @required this.createdAt,
    @required this.name,
    @required this.teacherId,
    @required this.teacher,
  });
  @override
  List<Object> get props =>
      [id, closeDate, createdAt, name, teacherId, teacher];
}
