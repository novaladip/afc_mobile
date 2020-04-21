import 'dart:io';

import 'package:afc_mobile/features/course/domain/entities/course.dart';
import 'package:afc_mobile/features/course/domain/entities/course_detail.dart';
import 'package:afc_mobile/features/course/domain/entities/section_detail.dart';
import 'package:afc_mobile/features/enrollment/domain/entities/enrollment.dart';
import 'package:afc_mobile/features/course/domain/entities/attendance_form.dart';
import 'package:afc_mobile/features/course/domain/entities/recognize_result.dart';

abstract class CourseInterface {
  Future<List<Course>> getCourses();
  Future<CourseDetail> getCourseDetail(String courseId);
  Future<SectionDetail> getSectionDetail(String sectionId);
  Future<RecognizeResult> recognizeStudent(String sectionId, File photo);
  Future<void> saveAttendances(List<AttendanceForm> attendances);
  Future<Enrollment> enrollCourse(String courseId);
}
