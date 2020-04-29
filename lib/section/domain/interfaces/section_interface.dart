import 'package:afc_mobile/section/section.dart';

abstract class SectionInterface {
  Future<SectionDetail> fetchSectionDetail(String sectionId);
}
