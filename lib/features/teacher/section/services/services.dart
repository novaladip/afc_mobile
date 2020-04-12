import 'package:afc_mobile/shared/models/models.dart';
import 'package:afc_mobile/shared/utils/utils.dart';

abstract class ISectionService {
  Future<SectionDetailModel> fetchById(String sectionId);
}

class SectionService implements ISectionService {
  final Api _api;

  const SectionService(this._api);

  @override
  Future<SectionDetailModel> fetchById(String sectionId) async {
    try {
      final res = await _api.http.get(URL.getSectionById(sectionId));
      final section = SectionDetailModel.fromJSON(res.data);
      return section;
    } catch (e) {
      throw e;
    }
  }
}
