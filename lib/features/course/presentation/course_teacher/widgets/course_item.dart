import 'package:afc_mobile/features/course/presentation/presentation.dart';
import 'package:flutter/material.dart';

import 'package:afc_mobile/common/utils/utils.dart';
import 'package:afc_mobile/common/widgets/widgets.dart';
import 'package:afc_mobile/features/course/domain/entities/course.dart';

class CourseItem extends StatelessWidget {
  final Course course;

  const CourseItem({
    Key key,
    @required this.course,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      builder: (context, appTheme) {
        return Card(
          color: Color(0XFFfefefe),
          elevation: 5,
          margin: EdgeInsets.symmetric(vertical: 8),
          child: InkWell(
            splashColor: appTheme.primaryColor.withOpacity(0.3),
            onTap: () {
              Navigator.of(context).pushNamed(
                CourseDetailPage.routeName,
                arguments: course.id,
              );
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    course.name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text('Created at: ${formatDate(course.createdAt)}'),
                  Text('Starting at: ${formatDate(course.createdAt)}'),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
