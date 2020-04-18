import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:afc_mobile/common/widgets/theme_builder/theme_builder.dart';

class LoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      builder: (context, appTheme) {
        return Center(
          child: SpinKitCubeGrid(
            color: appTheme.primaryColor,
            size: appTheme.width * 0.3,
          ),
        );
      },
    );
  }
}
