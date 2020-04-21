import 'dart:io';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/features/course/domain/entities/course.dart';
import 'package:afc_mobile/features/course/domain/entities/course_detail.dart';
import 'package:afc_mobile/features/course/domain/entities/section_detail.dart';
import 'package:afc_mobile/features/enrollment/domain/entities/enrollment.dart';
import 'package:afc_mobile/features/course/domain/entities/attendance_form.dart';
import 'package:afc_mobile/features/course/domain/entities/recognize_result.dart';
import 'package:afc_mobile/features/course/application/course_facade_service.dart';

@lazySingleton
@injectable
class CourseApi {
  final CourseFacadeService courseFacadeService;

  CourseApi({
    @required this.courseFacadeService,
  });

  Future<List<Course>> getCourses() async {
    return courseFacadeService.fetchCourses();
  }

  Future<CourseDetail> getCourseDetail(String courseId) async {
    return courseFacadeService.fetchCourseDetail(courseId);
  }

  Future<SectionDetail> getSectionDetail(String sectionId) async {
    return courseFacadeService.fetchSectionDetail(sectionId);
  }

  Future<RecognizeResult> recognizeStudent(String sectionId, File photo) async {
    return courseFacadeService.recognizeStudent(sectionId, photo);
  }

  Future<void> saveAttendances(List<AttendanceForm> attendances) async {
    return courseFacadeService.saveAttendances(attendances);
  }

  Future<Enrollment> enrollCourse(String courseId) async {
    return courseFacadeService.enrollCourse(courseId);
  }
}
