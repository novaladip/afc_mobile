import 'package:afc_mobile/common/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AttendanceForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      builder: (context, appTheme) {
        return Container(
          height: appTheme.height * 0.65,
          width: appTheme.width * 0.98,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
          ),
        );
      },
    );
  }
}
