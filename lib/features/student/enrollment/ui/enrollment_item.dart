import 'package:afc_mobile/shared/models/enrollment.dart';
import 'package:afc_mobile/shared/widgets/widgets.dart';
import 'package:flutter/material.dart';

class EnrollmentItem extends StatelessWidget {
  final Enrollment enrollment;

  const EnrollmentItem({
    Key key,
    @required this.enrollment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      builder: (context, appTheme) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                blurRadius: 1,
                spreadRadius: 0.1,
                offset: Offset(3, 3),
                color: Colors.grey.withOpacity(0.1),
              )
            ],
            color: Color(0XFFFAF8F8),
          ),
          margin: EdgeInsets.symmetric(vertical: 8),
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                enrollment.course.name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              teacherInfo(),
            ],
          ),
        );
      },
    );
  }

  Widget teacherInfo() {
    return Row(
      children: <Widget>[
        Text('Teach by ', style: TextStyle(fontSize: 15)),
        Text(
          enrollment.course.teacher.fullName,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
