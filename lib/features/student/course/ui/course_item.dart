import 'package:afc_mobile/features/student/course/models/models.dart';
import 'package:afc_mobile/shared/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  final CourseStudent course;

  const CourseItem({
    Key key,
    @required this.course,
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
              ),
            ],
            color: Color(0XFFFAF8F8),
          ),
          margin: EdgeInsets.symmetric(vertical: 8),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              leftItem(context),
              rightItem(context),
            ],
          ),
        );
      },
    );
  }

  Widget rightItem(BuildContext context) {
    return FlatButton(
      child: Text(
        'ENROLL',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).primaryColor,
        ),
      ),
      onPressed: () {
        showCupertinoDialog(
          context: context,
          builder: (context) => CupertinoAlertDialog(
            title: Text(
              "Are you sure want to enroll ${course.name} by ${course.teacher.fullName}?",
            ),
            actions: <Widget>[
              FlatButton(
                child: Text(
                  'YES',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('CANCEL'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Widget leftItem(BuildContext context) {
    final textStyle = TextStyle(fontSize: 16);
    final textStyleBlue = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Theme.of(context).primaryColor,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(course.name, style: textStyle),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            Text('Teach by ', style: textStyle),
            Text(course.teacher.fullName, style: textStyleBlue),
          ],
        ),
      ],
    );
  }
}
