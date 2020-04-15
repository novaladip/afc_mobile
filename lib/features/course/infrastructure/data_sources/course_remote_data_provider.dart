import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/common/common.dart';
import 'package:afc_mobile/features/course/infrastructure/models/course_model.dart';

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
}
