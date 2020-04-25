import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/common/api/api.dart';
import 'package:afc_mobile/teacher/teacher.dart';
import 'package:afc_mobile/common/models/models.dart';

@lazySingleton
class CourseTeacherRemoteProvider {
  final Api api;

  CourseTeacherRemoteProvider({
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

  Future<Course> createCourse(CreateCourseDto dto) async {
    try {
      final data =
          FormData.fromMap({'name': dto.name, 'close_date': dto.closeDate});
      final res = await api.dio.post('/course', data: data);
      final course = Course.fromJson(res.data);
      return course;
    } catch (e) {
      throw e;
    }
  }
}
