part of 'course_detail_bloc.dart';

@immutable
class CourseDetailState extends Equatable {
  final CourseDetail course;
  final bool isLoading;
  final bool isFailure;
  final bool isRefresh;
  final bool isRefreshFailure;

  const CourseDetailState({
    @required this.course,
    @required this.isLoading,
    @required this.isFailure,
    @required this.isRefresh,
    @required this.isRefreshFailure,
  });

  factory CourseDetailState.loading() {
    return CourseDetailState(
      course: null,
      isLoading: true,
      isFailure: false,
      isRefresh: false,
      isRefreshFailure: false,
    );
  }

  factory CourseDetailState.loaded(CourseDetail course) {
    return CourseDetailState(
      course: course,
      isLoading: false,
      isFailure: false,
      isRefresh: false,
      isRefreshFailure: false,
    );
  }

  factory CourseDetailState.refresh(CourseDetail course) {
    return CourseDetailState(
      course: course,
      isLoading: false,
      isFailure: false,
      isRefresh: true,
      isRefreshFailure: false,
    );
  }

  factory CourseDetailState.failure() {
    return CourseDetailState(
      course: null,
      isLoading: false,
      isFailure: true,
      isRefresh: false,
      isRefreshFailure: false,
    );
  }

  factory CourseDetailState.refreshFailure(CourseDetail course) {
    return CourseDetailState(
      course: course,
      isLoading: false,
      isFailure: false,
      isRefresh: false,
      isRefreshFailure: true,
    );
  }

  @override
  List<Object> get props => [
        course,
        isLoading,
        isFailure,
        isRefresh,
        isRefreshFailure,
      ];
}
