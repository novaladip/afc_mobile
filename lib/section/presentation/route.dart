import 'package:flutter/material.dart';

import 'package:afc_mobile/section/section.dart';

final Map<String, Widget Function(BuildContext)> sectionRoute = {
  SectionDetailPage.routeName: (_) => SectionDetailPage(),
};
