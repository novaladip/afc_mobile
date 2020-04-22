import 'package:afc_mobile/auth/auth.dart';
import 'package:flutter/widgets.dart';

Map<String, Widget Function(BuildContext)> buildRoutes() {
  return {
    ...authRoute,
  };
}
