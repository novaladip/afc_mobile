import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/common/api/api.dart';
import 'package:afc_mobile/teacher/teacher.dart';

@injectable
class SectionRemoteProvider {
  final Api api;

  SectionRemoteProvider({
    @required this.api,
  });

  Future<SectionDetail> fetchSectionDetail(String sectionId) async {
    try {
      final res = await api.dio.get('/section/$sectionId');
      final section = SectionDetail.fromJson(res.data);
      return section;
    } catch (e) {
      throw e;
    }
  }
}
