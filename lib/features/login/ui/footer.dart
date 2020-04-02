import 'package:afc_mobile/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      builder: (context, appTheme) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                width: 2,
                color: appTheme.primaryColor,
              ),
            ),
          ),
          width: double.infinity,
          child: Text(
            "AFC from three-dot.dev",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: appTheme.primaryColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }
}
