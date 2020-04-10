import 'package:afc_mobile/features/teacher/course/ui/course_item.dart';
import 'package:afc_mobile/shared/models/models.dart';
import 'package:flutter/material.dart';

class Courses extends StatelessWidget {
  final List<Course> courses;

  const Courses({
    Key key,
    @required this.courses,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: courses.length,
      padding: EdgeInsets.symmetric(horizontal: 15),
      itemBuilder: (context, index) {
        return CourseItem(
          key: Key(courses[index].id),
          course: courses[index],
        );
      },
    );
  }
}
