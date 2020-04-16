import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/common/common.dart';
import 'package:afc_mobile/features/course/infrastructure/models/course_model.dart';
import 'package:afc_mobile/features/course/infrastructure/models/course_detail_model.dart';
import 'package:afc_mobile/features/course/infrastructure/models/section_detail_model.dart';

@lazySingleton
@injectable
class CourseRemoteDataProvider {
  final Api api;

  CourseRemoteDataProvider({
    @required this.api,
  });

  Future<List<CourseModel>> fetchCourses() async {
    try {
      final res = await api.dio.get('/course');
      final courses =
          (res.data as List).map((json) => CourseModel.fromJson(json)).toList();
      return courses;
    } catch (e) {
      throw e;
    }
  }

  Future<CourseDetailModel> fetchCourseDetail(String courseId) async {
    try {
      final res = await api.dio.get('/course/$courseId');
      final courseDetail = CourseDetailModel.fromJson(res.data);
      return courseDetail;
    } catch (e) {
      throw e;
    }
  }

  Future<SectionDetailModel> fetchSectionDetail(String sectionId) async {
    try {
      final res = await api.dio.get('/section/$sectionId');
      final sectionDetail = SectionDetailModel.fromJson(res.data);
      return sectionDetail;
    } catch (e) {
      throw e;
    }
  }
}
