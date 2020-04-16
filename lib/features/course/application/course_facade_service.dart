import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/features/course/domain/entities/course.dart';
import 'package:afc_mobile/features/course/domain/entities/course_detail.dart';
import 'package:afc_mobile/features/course/domain/entities/section_detail.dart';
import 'package:afc_mobile/features/course/infrastructure/repositories/course_repository.dart';

@lazySingleton
@injectable
class CourseFacadeService {
  final CourseRepository courseRepository;

  CourseFacadeService({
    @required this.courseRepository,
  });

  Future<List<Course>> fetchCourses() {
    return courseRepository.getCourses();
  }

  Future<CourseDetail> fetchCourseDetail(String courseId) {
    return courseRepository.getCourseDetail(courseId);
  }

  Future<SectionDetail> fetchSectionDetail(String sectionId) {
    return courseRepository.getSectionDetail(sectionId);
  }
}
