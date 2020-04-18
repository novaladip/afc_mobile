import 'package:afc_mobile/common/widgets/widgets.dart';
import 'package:flutter/material.dart';

class RegisterFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      builder: (context, appTheme) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                width: 1,
                color: Colors.white,
              ),
            ),
          ),
          width: double.infinity,
          child: Text(
            "AFC from three-dot.dev",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        );
      },
    );
  }
}
