import 'package:afc_mobile/shared/models/models.dart';
import 'package:afc_mobile/shared/utils/utils.dart';

abstract class ICourseDetailService {
  Future<CourseDetailModel> fetch(String courseId);
}

class CourseDetailService implements ICourseDetailService {
  final Api _api;

  const CourseDetailService(this._api);

  @override
  Future<CourseDetailModel> fetch(String courseId) async {
    try {
      final res = await _api.http.get(URL.getCourseById(courseId));
      final courseDetail = CourseDetailModel.fromJSON(res.data);
      return courseDetail;
    } catch (e) {
      throw e;
    }
  }
}
