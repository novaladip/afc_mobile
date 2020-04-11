import 'package:afc_mobile/features/teacher/add_section/dto/dto.dart';
import 'package:afc_mobile/shared/utils/utils.dart';

abstract class IAddSectionService {
  Future<void> addSection(AddSectionDto dto);
}

class AddSectionService implements IAddSectionService {
  final Api _api;

  const AddSectionService(this._api);

  @override
  Future<void> addSection(AddSectionDto dto) async {
    try {
      await _api.http.post(URL.addSection(), data: dto.toFormData);
    } catch (e) {
      print(e);
      throw e;
    }
  }
}
