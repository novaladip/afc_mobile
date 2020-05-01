import 'package:afc_mobile/section/section.dart';

abstract class SectionInterface {
  Future<SectionDetail> fetchSectionDetail(String sectionId);
  Future<RecognizeResult> recognizeStudent(String sectionId, String photoPath);
  Future<void> bulkUpdateAttendances(List<AttendanceFormDto> attendances);
}
