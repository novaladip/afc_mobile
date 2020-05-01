import 'package:flutter/material.dart';

import 'course_card.dart';
import 'package:afc_mobile/common/models/models.dart';
import 'package:afc_mobile/common/widgets/widgets.dart';

class CourseList extends StatelessWidget {
  final List<Course> courses;

  const CourseList({
    Key key,
    @required this.courses,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (courses.isEmpty) {
      return EmptyScreen(
        message: "Oops there is no course yet, start adding some!",
      );
    }

    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 15),
      itemCount: courses.length,
      itemBuilder: (context, index) => CourseCard(
        key: Key(courses[index].id),
        course: courses[index],
      ),
    );
  }
}
