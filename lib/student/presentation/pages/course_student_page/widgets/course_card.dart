import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:afc_mobile/common/widgets/widgets.dart';
import 'package:afc_mobile/common/models/models.dart';

class CourseCard extends StatelessWidget {
  final Course course;
  final bool isLoading;
  final bool isEnrolled;

  const CourseCard({
    Key key,
    @required this.course,
    @required this.isLoading,
    @required this.isEnrolled,
  }) : super(key: key);

  Widget rightItem(BuildContext context) {
    if (isLoading) {
      return SpinKitChasingDots(color: Colors.black, size: 24);
    }

    final child = Text(
      isEnrolled ? 'ENROLLED' : 'ENROLL',
      style: TextStyle(
        color: isEnrolled ? Colors.grey : Theme.of(context).primaryColor,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );

    return InkWell(
      onTap: () {},
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      builder: (context, appTheme) {
        return Card(
          margin: EdgeInsets.symmetric(vertical: 4),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      course.name,
                      style: appTheme.textTheme.display1.copyWith(
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: <Widget>[
                        Text('Teach by '),
                        Text(
                          course.teacher.fullName,
                          style: appTheme.textTheme.body1.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                rightItem(context),
              ],
            ),
          ),
        );
      },
    );
  }
}
