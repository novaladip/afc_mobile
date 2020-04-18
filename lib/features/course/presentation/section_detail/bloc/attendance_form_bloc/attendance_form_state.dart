part of 'attendance_form_bloc.dart';

class AttendanceFormState extends Equatable {
  final List<AttendanceForm> attendances;
  final bool isSubmiting;
  final bool isFailure;
  final bool isSuccess;

  const AttendanceFormState({
    @required this.attendances,
    @required this.isSubmiting,
    @required this.isFailure,
    @required this.isSuccess,
  });

  factory AttendanceFormState.initial() {
    return AttendanceFormState(
      attendances: [],
      isSubmiting: false,
      isFailure: false,
      isSuccess: false,
    );
  }

  AttendanceFormState copyWith(
      {List<AttendanceForm> attendances,
      bool isSubmiting,
      bool isFailure,
      bool isSuccess}) {
    return AttendanceFormState(
      attendances: attendances ?? this.attendances,
      isSubmiting: isSubmiting ?? this.isSubmiting,
      isFailure: isFailure ?? this.isFailure,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  @override
  String toString() {
    return super.toString() + ' ${attendances.length}';
  }

  @override
  List<Object> get props => [attendances, isSubmiting, isFailure, isSuccess];
}
