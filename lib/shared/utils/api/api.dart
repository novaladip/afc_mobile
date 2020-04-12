import 'package:dio/dio.dart';

class Api {
  final Dio http;

  const Api(this.http);

  void removeDefaultAuthHeader() {
    http.options.headers = {
      'Authorization': '',
    };
  }

  void setDefaultAuthHeader(String jwt) {
    http.options.headers = {
      'Authorization': 'Bearer ' + jwt,
    };
  }
}

class URL {
  static String login() => '/user/login';
  static String registerStudent() => '/user/register/student';
  static String registerTeacher() => '/user/register/teacher';
  static String studentCourse() => '/course';
  static String teacherCourse() => '/course';
  static String enrollCourse(String courseId) => '/enrollment/$courseId';
  static String getEnrollment() => '/enrollment';
  static String getCourseById(String courseId) => '/course/$courseId';
  static String addSection() => '/section';
  static String getSectionById(String sectionId) => '/section/$sectionId';
}
