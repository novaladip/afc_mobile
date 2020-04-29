import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

import 'package:afc_mobile/common/api/api.dart';
import 'package:afc_mobile/section/section.dart';

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

  Future<RecognizeResult> recognizeStudent(
      String sectionId, String photoPath) async {
    try {
      final data = FormData.fromMap({
        'photo': MultipartFile.fromFileSync(
          photoPath,
          filename: photoPath.split('.').last,
        ),
      });
      final res = await api.dio.post(
        '/section/$sectionId/recognize/student',
        data: data,
      );
      final result = RecognizeResult.fromJson(res.data);
      return result;
    } catch (e) {
      throw e;
    }
  }
}
