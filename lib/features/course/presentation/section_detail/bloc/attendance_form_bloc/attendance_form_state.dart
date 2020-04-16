part of 'attendance_form_bloc.dart';

class AttendanceFormState extends Equatable {
  final List<AttendanceForm> attendances;
  final bool isSubmiting;
  final bool isFailure;

  const AttendanceFormState({
    @required this.attendances,
    @required this.isSubmiting,
    @required this.isFailure,
  });

  factory AttendanceFormState.initial() {
    return AttendanceFormState(
      attendances: [],
      isSubmiting: false,
      isFailure: false,
    );
  }

  AttendanceFormState copyWith({
    List<AttendanceForm> attendances,
    bool isSubmiting,
    bool isFailure,
  }) {
    return AttendanceFormState(
      attendances: attendances ?? this.attendances,
      isSubmiting: isSubmiting ?? this.isSubmiting,
      isFailure: isFailure ?? this.isFailure,
    );
  }

  @override
  String toString() {
    return super.toString() + ' ${attendances.length}';
  }

  @override
  List<Object> get props => [attendances, isSubmiting, isFailure];
}
