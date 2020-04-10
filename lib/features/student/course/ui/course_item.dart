import 'package:afc_mobile/features/student/course/models/models.dart';
import 'package:afc_mobile/features/student/enroll_course/enroll_course.dart';
import 'package:afc_mobile/features/student/enrollment/enrollment.dart';
import 'package:afc_mobile/shared/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CourseItem extends StatelessWidget {
  final CourseStudent course;

  const CourseItem({
    Key key,
    @required this.course,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EnrollmentBloc, EnrollmentState>(
      builder: (context, enrollmentState) {
        return BlocBuilder<EnrollCourseBloc, EnrollCourseState>(
          builder: (context, state) {
            final enrollingCourse =
                state is EnrollCourseLoading ? state.courseId : "";
            final isEnrolling = enrollingCourse == course.id;
            final index = enrollmentState.enrollments
                .indexWhere((e) => e.courseId == course.id);

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
                      rightItem(context, isEnrolling, index),
                      // rightItem(context),
                    ],
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  Widget loading(BuildContext context) {
    return SpinKitChasingDots(size: 16, color: Theme.of(context).primaryColor);
  }

  Widget rightItem(BuildContext context, bool isEnrolling, int index) {
    final isEnrolled = index >= 0;
    final buttonText = Text(
      isEnrolled ? 'ENROLLED' : 'ENROLL',
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: isEnrolled ? Colors.grey : Theme.of(context).primaryColor,
      ),
    );
    final buttonChild = isEnrolling ? loading(context) : buttonText;

    return FlatButton(
      child: buttonChild,
      onPressed: isEnrolled
          ? null
          : () {
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
                      onPressed: () {
                        print(course.id);
                        BlocProvider.of<EnrollCourseBloc>(context)
                            .add(EnrollCourseButtonPressed(course.id));
                        Navigator.of(context).pop();
                      },
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
    final textStyleCaption = TextStyle(fontSize: 14);
    final textStyleCaptionBold = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
    );
    final textStyleBold = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(course.name, style: textStyleBold),
        SizedBox(height: 10),
        Row(
          children: <Widget>[
            Text('Teach by ', style: textStyleCaption),
            Text(course.teacher.fullName, style: textStyleCaptionBold),
          ],
        ),
      ],
    );
  }
}
