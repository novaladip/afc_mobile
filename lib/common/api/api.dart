import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/config/config.dart';

final baseOption = BaseOptions(
  baseUrl: Env.baseURL + '/api',
);

@injectable
class Api {
  final dio = Dio(baseOption);

  void removeDefaultAuthHeader() {
    dio.options.headers = {
      'Authorization': '',
    };
  }

  void setDefaultAuthHeader(String jwt) {
    dio.options.headers = {
      'Authorization': 'Bearer ' + jwt,
    };
  }
}
