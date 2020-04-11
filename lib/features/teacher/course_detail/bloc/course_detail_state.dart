part of 'course_detail_bloc.dart';

abstract class CourseDetailState extends Equatable {
  const CourseDetailState();

  @override
  List<Object> get props => [];
}

class CourseDetailLoading extends CourseDetailState {}

class CourseDetailLoaded extends CourseDetailState {
  final CourseDetailModel courseDetail;

  const CourseDetailLoaded(this.courseDetail);

  @override
  List<Object> get props => [courseDetail];
}

class CourseDetailFailure extends CourseDetailState {}
