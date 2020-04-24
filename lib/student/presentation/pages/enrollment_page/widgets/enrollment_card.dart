import 'package:flutter/material.dart';

import 'package:afc_mobile/student/student.dart';

class EnrollmentCard extends StatelessWidget {
  final Enrollment enrollment;

  const EnrollmentCard({
    Key key,
    @required this.enrollment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              enrollment.course.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 4),
            buildTeachBy(),
            SizedBox(height: 4),
            Text(
              enrollment.formattedEnrollDate,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTeachBy() {
    return Row(
      children: <Widget>[
        Text(
          'Teach by ',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        Text(
          enrollment.course.teacher.fullName,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
