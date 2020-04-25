part of 'add_course_bloc.dart';

@freezed
abstract class AddCourseEvent with _$AddCourseEvent {
  const factory AddCourseEvent.changeName(String name) = _ChangeName;
  const factory AddCourseEvent.changeCloseDate(String date) = _ChangeDate;
  const factory AddCourseEvent.submit() = _Submit;
  const factory AddCourseEvent.clearForm() = _ClearForm;
}
