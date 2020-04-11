import 'package:afc_mobile/features/teacher/course_detail/course_detail.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:afc_mobile/shared/models/models.dart';

class CourseItem extends StatelessWidget {
  final Course course;

  CourseItem({
    Key key,
    @required this.course,
  }) : super(key: key);

  String formatDate(String date) =>
      DateFormat.yMd().format(DateTime.parse(date));

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(top: 4, bottom: 4),
      child: InkWell(
        onTap: () => Navigator.of(context)
            .pushNamed(CourseDetailPage.routeName, arguments: course.id),
        highlightColor: Theme.of(context).primaryColor.withOpacity(0.1),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                course.name,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text('Created at: ${formatDate(course.createdAt)}'),
              Text('Starting at: ${formatDate(course.createdAt)}'),
            ],
          ),
        ),
      ),
    );
  }
}
