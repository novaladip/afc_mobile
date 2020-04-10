part of 'enrollment_bloc.dart';

@immutable
class EnrollmentState extends Equatable {
  final List<Enrollment> enrollments;
  final bool isLoading;
  final bool isRefresh;
  final bool isFailure;
  final bool isRefreshFailure;

  const EnrollmentState({
    @required this.enrollments,
    @required this.isLoading,
    @required this.isRefresh,
    @required this.isFailure,
    @required this.isRefreshFailure,
  });

  factory EnrollmentState.initial() {
    return EnrollmentState(
      enrollments: [],
      isLoading: true,
      isRefresh: false,
      isFailure: false,
      isRefreshFailure: false,
    );
  }

  factory EnrollmentState.loading() {
    return EnrollmentState(
      enrollments: [],
      isLoading: true,
      isRefresh: false,
      isFailure: false,
      isRefreshFailure: false,
    );
  }

  factory EnrollmentState.loaded(List<Enrollment> enrollments) {
    return EnrollmentState(
      enrollments: enrollments,
      isLoading: false,
      isRefresh: false,
      isFailure: false,
      isRefreshFailure: false,
    );
  }

  factory EnrollmentState.falure() {
    return EnrollmentState(
      enrollments: [],
      isLoading: false,
      isRefresh: false,
      isFailure: true,
      isRefreshFailure: false,
    );
  }

  factory EnrollmentState.refresh(List<Enrollment> enrollments) {
    return EnrollmentState(
      enrollments: enrollments,
      isLoading: false,
      isRefresh: true,
      isFailure: false,
      isRefreshFailure: false,
    );
  }

  factory EnrollmentState.refreshFailure(List<Enrollment> enrollments) {
    return EnrollmentState(
      enrollments: enrollments,
      isLoading: false,
      isRefresh: false,
      isFailure: false,
      isRefreshFailure: true,
    );
  }

  EnrollmentState copyWith({
    List<Enrollment> enrollments,
    bool isLoading,
    bool isRefresh,
    bool isFailure,
    bool isRefreshFailure,
  }) {
    return EnrollmentState(
      enrollments: enrollments ?? this.enrollments,
      isLoading: isLoading ?? this.isLoading,
      isRefresh: isRefresh ?? this.isRefresh,
      isFailure: isFailure ?? this.isFailure,
      isRefreshFailure: isRefreshFailure ?? this.isRefreshFailure,
    );
  }

  @override
  List<Object> get props =>
      [enrollments, isLoading, isRefresh, isFailure, isRefreshFailure];
}
