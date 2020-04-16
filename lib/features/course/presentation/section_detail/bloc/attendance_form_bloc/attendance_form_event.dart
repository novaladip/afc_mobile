part of 'attendance_form_bloc.dart';

abstract class AttendanceFormEvent extends Equatable {
  const AttendanceFormEvent();

  @override
  List<Object> get props => [];
}

class ClearAttendanceFormState extends AttendanceFormEvent {}

class PopulateAttendanceFromSectionDetail extends AttendanceFormEvent {
  final SectionDetail sectionDetail;

  const PopulateAttendanceFromSectionDetail(this.sectionDetail);

  @override
  List<Object> get props => [sectionDetail];
}

class OnChangeAttendanceStatus extends AttendanceFormEvent {
  final String status;
  final int index;

  const OnChangeAttendanceStatus(this.status, this.index);

  @override
  List<Object> get props => [status, index];
}
