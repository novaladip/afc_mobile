import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:afc_mobile/features/course/domain/entities/course.dart';
import 'package:afc_mobile/features/enrollment/presentation/enrollment_page/bloc/enrollment_bloc.dart';
import 'package:afc_mobile/features/course/presentation/course_student/bloc/enroll_course/enroll_course_bloc.dart';

class ListCourse extends StatelessWidget {
  final List<Course> courses;

  const ListCourse({
    Key key,
    @required this.courses,
  }) : super(key: key);

  void showSnackBar({
    @required BuildContext context,
    Color color = Colors.green,
    @required String message,
  }) {
    Scaffold.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(backgroundColor: color, content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EnrollCourseBloc, EnrollCourseState>(
      listener: (context, enrollCourseState) {
        if (enrollCourseState is EnrollCourseStateSuccess) {
          showSnackBar(context: context, message: 'Enroll course success');
        }

        if (enrollCourseState is EnrollCourseStateFailure) {
          showSnackBar(
            context: context,
            message: 'Enroll course failed',
            color: Colors.red,
          );
        }
      },
      builder: (context, enrollCourseState) {
        return BlocBuilder<EnrollmentBloc, EnrollmentState>(
          builder: (context, enrollmentState) {
            return ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemCount: courses.length,
              itemBuilder: (context, index) {
                final course = courses[index];
                final enrollmentIndex = enrollmentState.enrollments
                    .indexWhere((e) => e.courseId == course.id);
                final isEnrolled = enrollmentIndex >= 0;
                final isLoading =
                    enrollCourseState is EnrollCourseStateLoading &&
                        enrollCourseState.courseId == course.id;
                return CourseItem(
                  key: Key(course.id),
                  course: course,
                  isEnrolled: isEnrolled,
                  isLoading: isLoading,
                );
              },
            );
          },
        );
      },
    );
  }
}

class CourseItem extends StatelessWidget {
  final Course course;
  final bool isLoading;
  final bool isEnrolled;

  const CourseItem({
    Key key,
    @required this.course,
    @required this.isEnrolled,
    @required this.isLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  style: TextStyle(
                    fontFamily: 'Comic Neue',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: <Widget>[
                    Text(
                      'Teach by ',
                      style: TextStyle(
                        fontFamily: 'Comic Neue',
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      course.teacher.fullName,
                      style: TextStyle(
                        fontFamily: 'Comic Neue',
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )
              ],
            ),
            FlatButton(
              textColor: Theme.of(context).primaryColor,
              child: isLoading
                  ? SpinKitChasingDots(color: Colors.black, size: 24)
                  : Text(isEnrolled ? 'ENROLLED' : 'ENROLL'),
              onPressed: isEnrolled
                  ? null
                  : () {
                      context
                          .bloc<EnrollCourseBloc>()
                          .add(EnrollCourseButtonPressed(course.id));
                    },
            )
          ],
        ),
      ),
    );
  }
}
