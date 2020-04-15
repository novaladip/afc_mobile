import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

import 'package:afc_mobile/shared/entities/entities.dart';
import 'package:afc_mobile/features/course/domain/entities/section.dart';

class CourseDetail extends Equatable {
  final String id;
  final String closeDate;
  final String createdAt;
  final String name;
  final String teacherId;
  final List<Section> sections;
  final List<User> students;
  final User teacher;

  CourseDetail({
    @required this.id,
    @required this.closeDate,
    @required this.createdAt,
    @required this.name,
    @required this.teacherId,
    @required this.sections,
    @required this.students,
    @required this.teacher,
  });

  @override
  List<Object> get props =>
      [id, closeDate, createdAt, name, teacherId, sections, students, teacher];
}
