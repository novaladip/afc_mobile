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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<EnrollmentBloc, EnrollmentState>(
        builder: (context, state) {
          return ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 20),
            itemCount: courses.length,
            itemBuilder: (context, index) {
              final course = courses[index];
              return CourseCard(
                key: Key(course.id),
                course: course,
                isEnrolled: course.isEnrolled(state.enrollments),
                isLoading: false,
              );
            },
          );
        },
      ),
    );
  }
}
