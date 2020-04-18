part of 'course_detail_bloc.dart';

abstract class CourseDetailEvent extends Equatable {
  const CourseDetailEvent();

  @override
  List<Object> get props => [];
}

class ClearCourseDetailState extends CourseDetailEvent {}

class RefreshCourseDetail extends CourseDetailEvent {}

class GetCourseDetail extends CourseDetailEvent {
  final String courseId;

  const GetCourseDetail(this.courseId);

  @override
  List<Object> get props => [courseId];
}
