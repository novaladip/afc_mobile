import 'dart:io';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/features/course/domain/entities/course.dart';
import 'package:afc_mobile/features/course/domain/entities/course_detail.dart';
import 'package:afc_mobile/features/course/domain/entities/section_detail.dart';
import 'package:afc_mobile/features/enrollment/domain/entities/enrollment.dart';
import 'package:afc_mobile/features/course/domain/entities/attendance_form.dart';
import 'package:afc_mobile/features/course/domain/entities/recognize_result.dart';
import 'package:afc_mobile/features/course/domain/interfaces/course_interface.dart';
import 'package:afc_mobile/features/course/infrastructure/data_sources/course_remote_data_provider.dart';
import 'package:afc_mobile/features/course/infrastructure/data_sources/attendance_remote_data_provider.dart';

@lazySingleton
@injectable
class CourseRepository implements CourseInterface {
  final CourseRemoteDataProvider courseRemoteDataProvider;
  final AttendanceRemoteDataProvider attendanceRemoteDataProvider;

  const CourseRepository({
    @required this.courseRemoteDataProvider,
    @required this.attendanceRemoteDataProvider,
  });

  @override
  Future<List<Course>> getCourses() {
    return courseRemoteDataProvider.fetchCourses();
  }

  @override
  Future<CourseDetail> getCourseDetail(String courseId) {
    return courseRemoteDataProvider.fetchCourseDetail(courseId);
  }

  @override
  Future<SectionDetail> getSectionDetail(String sectionId) {
    return courseRemoteDataProvider.fetchSectionDetail(sectionId);
  }

  @override
  Future<RecognizeResult> recognizeStudent(String sectionId, File photo) {
    return courseRemoteDataProvider.recognizeStudent(sectionId, photo);
  }

  @override
  Future<void> saveAttendances(List<AttendanceForm> attendances) {
    return attendanceRemoteDataProvider.saveAttendances(attendances);
  }

  @override
  Future<Enrollment> enrollCourse(String courseId) {
    return courseRemoteDataProvider.enrollCourse(courseId);
  }
}
