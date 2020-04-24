import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'course_card.dart';
import 'package:afc_mobile/student/student.dart';
import 'package:afc_mobile/common/models/models.dart';

class CourseList extends StatelessWidget {
  final List<Course> courses;

  const CourseList({
    Key key,
    @required this.courses,
  }) : super(key: key);

  void _showSnackBar(
    BuildContext context, {
    Color color = Colors.green,
    @required String message,
  }) {
    Scaffold.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          backgroundColor: color,
          content: Text(message),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<EnrollmentBloc, EnrollmentState>(
        builder: (context, state) {
          return BlocConsumer<EnrollCourseBloc, EnrollCourseState>(
            listener: (context, ecState) {
              ecState.maybeWhen(
                orElse: () {}, // Nothing to do here
                success: (courseName) {
                  _showSnackBar(
                    context,
                    message: '$courseName has been enrolled',
                  );
                },
                failure: () {
                  _showSnackBar(
                    context,
                    message: 'Failed to enroll course',
                    color: Colors.red,
                  );
                },
              );
            },
            builder: (context, ecState) {
              return ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20),
                itemCount: courses.length,
                itemBuilder: (context, index) {
                  final course = courses[index];
                  return CourseCard(
                    key: Key(course.id),
                    course: course,
                    isEnrolled: course.isEnrolled(state.enrollments),
                    isLoading: ecState.maybeWhen(
                      orElse: () => false,
                      loading: (courseId) => courseId == course.id,
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
