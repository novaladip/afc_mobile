import 'package:afc_mobile/common/models/models.dart';
import 'package:afc_mobile/common/widgets/theme_builder/theme_builder.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final course = ModalRoute.of(context).settings.arguments as Course;
    return ThemeBuilder(
      builder: (context, appTheme) => Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        width: double.infinity,
        height: appTheme.height * 0.28,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildBackButton(context),
            Container(
              margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    course.name,
                    style:
                        appTheme.textTheme.title.copyWith(color: Colors.white),
                  ),
                  SizedBox(height: 8),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBackButton(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pop(),
      child: Icon(
        Icons.chevron_left,
        size: 75,
        color: Colors.white,
      ),
    );
  }
}
