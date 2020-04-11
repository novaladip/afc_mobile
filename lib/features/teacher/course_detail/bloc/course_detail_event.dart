part of 'course_detail_bloc.dart';

abstract class CourseDetailEvent extends Equatable {
  const CourseDetailEvent();

  @override
  List<Object> get props => [];
}

class FetchCourseDetail extends CourseDetailEvent {
  final String courseId;

  const FetchCourseDetail(
    this.courseId,
  );

  @override
  List<Object> get props => [courseId];
}
