import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

import 'package:afc_mobile/common/utils/utils.dart';
import 'package:afc_mobile/common/models/models.dart';

class Course extends Equatable {
  final String id;
  final String name;
  final String closeDate;
  final String createdAt;
  final String teacherId;
  final User teacher;

  const Course({
    @required this.id,
    @required this.name,
    @required this.closeDate,
    @required this.createdAt,
    @required this.teacherId,
    @required this.teacher,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      id: json['id'],
      name: json['name'],
      closeDate: json['close_date'],
      createdAt: json['created_at'],
      teacherId: json['teacher_id'],
      teacher: User.fromJson(json['teacher']),
    );
  }

  String get formattedCloseDate => formatDate(closeDate);
  String get formattedCreatedAt => formatDate(createdAt);

  @override
  List<Object> get props =>
      [id, name, closeDate, createdAt, teacherId, teacher];
}
