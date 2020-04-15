import 'package:flutter/material.dart';

import 'section_list.dart';
import 'course_detail_header.dart';
import 'package:afc_mobile/common/widgets/widgets.dart';

class CourseDetailBaseLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      builder: (context, appTheme) {
        return Stack(
          children: <Widget>[
            Image.asset(
              'assets/course_background.png',
              height: appTheme.height,
              width: appTheme.width,
              fit: BoxFit.fill,
            ),
            Positioned(
              top: 0,
              child: Opacity(
                opacity: 0.09,
                child: Image.asset(
                  'assets/classroom.jpg',
                  height: appTheme.height * 0.5,
                  width: appTheme.width,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            CourseDetailHeader(),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                ),
              ),
              margin: EdgeInsets.only(
                left: appTheme.width * 0.02,
                top: appTheme.height * 0.28,
              ),
              alignment: Alignment.center,
              width: appTheme.width * 0.98,
              height: appTheme.height * 0.72,
              child: SectionList(),
            ),
          ],
        );
      },
    );
  }
}
