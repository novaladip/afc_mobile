import 'package:flutter/material.dart';

import 'package:afc_mobile/profile/profile.dart';

final Map<String, Widget Function(BuildContext)> profileRoute = {
  EditProfilePage.routeName: (_) => EditProfilePage(),
};
