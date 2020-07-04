import 'package:dio/dio.dart';
import 'package:flutter_exif_rotation/flutter_exif_rotation.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';

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
      final fixedImage = await FlutterExifRotation.rotateImage(path: photoPath);

      final result = await FlutterImageCompress.compressAndGetFile(
        fixedImage.path,
        fixedImage.path + "compreessed." + photoPath.split('.').last,
        quality: 80,
      );
      final formData = FormData.fromMap({
        'photo': MultipartFile.fromFileSync(
          result.path,
          filename: photoPath.split('.').last,
        ),
      });
      final res = await api.dio.post(
        '/section/$sectionId/recognize/student',
        data: formData,
      );
      final data = RecognizeResult.fromJson(res.data);
      return data;
    } catch (e) {
      print(e);
      throw e;
    }
  }

  Future<void> bulkUpdateAttendances(
    List<AttendanceFormDto> attendances,
  ) async {
    try {
      final data = attendances.map((a) => a.toMap).toList();
      await api.dio.put('/attendance/update/bulk', data: {'attendances': data});
    } catch (e) {
      print(e);
      throw e;
    }
  }
}
