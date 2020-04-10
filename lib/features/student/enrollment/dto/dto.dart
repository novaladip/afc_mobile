import 'package:equatable/equatable.dart';

class EnrollCourseDto extends Equatable {
  final String courseId;

  EnrollCourseDto(this.courseId);

  @override
  List<Object> get props => [courseId];
}
