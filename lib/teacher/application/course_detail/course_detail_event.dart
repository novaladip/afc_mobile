part of 'course_detail_bloc.dart';

@freezed
abstract class CourseDetailEvent with _$CourseDetailEvent {
  const factory CourseDetailEvent.fetch(String courseId) = _Fetch;
  const factory CourseDetailEvent.refresh() = _Refresh;
  const factory CourseDetailEvent.newSection(Section section) = _NewSection;
}
