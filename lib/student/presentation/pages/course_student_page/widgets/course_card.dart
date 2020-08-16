import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:afc_mobile/student/student.dart';
import 'package:afc_mobile/common/models/models.dart';
import 'package:afc_mobile/common/widgets/widgets.dart';

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
      return SpinKitChasingDots(
          color: Theme.of(context).primaryColor, size: 24);
    }

    final child = Text(
      isEnrolled ? 'TERDAFTAR' : 'DAFTAR',
      style: TextStyle(
        color: isEnrolled ? Colors.grey : Theme.of(context).primaryColor,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );

    return InkWell(
      onTap: () {
        context
            .bloc<EnrollCourseBloc>()
            .add(EnrollCourseEvent.enroll(course.id));
      },
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
                      style: appTheme.textTheme.headline6.copyWith(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: <Widget>[
                        Text('Dosen: '),
                        Text(
                          course.teacher.fullName,
                          style: appTheme.textTheme.bodyText2.copyWith(
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
