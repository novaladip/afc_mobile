import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/common/api/api.dart';
import 'package:afc_mobile/common/models/models.dart';

@lazySingleton
class CourseStudentRemoteProvider {
  final Api api;

  CourseStudentRemoteProvider({
    @required this.api,
  });

  Future<List<Course>> fetchCourses() async {
    try {
      final res = await api.dio.get('/course');
      final courses =
          (res.data as List).map((json) => Course.fromJson(json)).toList();
      return courses;
    } catch (e) {
      throw e;
    }
  }
}
