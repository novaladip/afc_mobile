part of 'enrollment_bloc.dart';

@freezed
abstract class EnrollmentEvent with _$EnrollmentEvent {
  const factory EnrollmentEvent.fetch() = _Fetch;
  const factory EnrollmentEvent.refresh() = _Refresh;
  const factory EnrollmentEvent.newEnrollment(Enrollment enrollment) =
      _NewEnrollment;
  const factory EnrollmentEvent.onLoggedOut() = _OnLoggedOut;
}
