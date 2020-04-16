import 'package:afc_mobile/features/course/domain/entities/section_detail.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/features/course/domain/entities/course.dart';
import 'package:afc_mobile/features/course/domain/entities/course_detail.dart';
import 'package:afc_mobile/features/course/domain/interfaces/course_interface.dart';
import 'package:afc_mobile/features/course/infrastructure/data_sources/course_remote_data_provider.dart';

@lazySingleton
@injectable
class CourseRepository implements CourseInterface {
  final CourseRemoteDataProvider courseRemoteDataProvider;

  const CourseRepository({
    @required this.courseRemoteDataProvider,
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
}