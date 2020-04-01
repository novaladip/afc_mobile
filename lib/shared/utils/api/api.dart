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
      'Authorization': jwt,
    };
  }
}

class URL {
  static String login() => '/user/login';
  static String registerStudent() => '/user/register/student';
  static String registerTeacher() => '/user/register/teacher';
}
