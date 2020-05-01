part of 'add_course_bloc.dart';

@freezed
abstract class AddCourseState with _$AddCourseState {
  const factory AddCourseState({
    @required CreateCourseDto createCourseDto,
    @required FormStatus status,
  }) = _AddCourseState;

  factory AddCourseState.initial() => AddCourseState(
        createCourseDto: CreateCourseDto(
          closeDate: DateFormat('yyyy-MM-dd').format(DateTime.now()),
          name: '',
        ),
        status: FormStatus.initial(),
      );
}

@freezed
abstract class FormStatus with _$FormStatus {
  const factory FormStatus.initial() = _FormInitial;
  const factory FormStatus.submitting() = _FormSubmitting;
  const factory FormStatus.success(Course course) = _FormSuccess;
  const factory FormStatus.failure() = _FormFailure;
}
