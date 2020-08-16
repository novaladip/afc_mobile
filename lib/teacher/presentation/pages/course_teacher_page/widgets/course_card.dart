import 'package:flutter/material.dart';

import 'package:afc_mobile/teacher/teacher.dart';
import 'package:afc_mobile/common/models/models.dart';
import 'package:afc_mobile/common/widgets/widgets.dart';

class CourseCard extends StatelessWidget {
  final Course course;

  const CourseCard({
    Key key,
    @required this.course,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      builder: (context, appTheme) {
        return Card(
          margin: EdgeInsets.symmetric(vertical: 4),
          child: InkWell(
            onTap: () => Navigator.of(context).pushNamed(
              CourseDetailPage.routeName,
              arguments: course,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Hero(
                    tag: course.id,
                    child: Text(
                      course.name,
                      style: appTheme.textTheme.headline6.copyWith(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  buildCaption(
                    appTheme,
                    text: 'Dibuat: ',
                    value: course.formattedCreatedAt,
                  ),
                  SizedBox(height: 2),
                  buildCaption(
                    appTheme,
                    text: 'Tanggal Mulai: ',
                    value: course.formattedCloseDate,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Row buildCaption(
    AppTheme appTheme, {
    @required String text,
    @required String value,
  }) {
    return Row(
      children: <Widget>[
        Text(
          text,
          style: appTheme.textTheme.caption.copyWith(
            color: Colors.black,
          ),
        ),
        Text(
          value,
          style: appTheme.textTheme.caption.copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
