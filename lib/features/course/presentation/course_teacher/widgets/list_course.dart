import 'package:flutter/material.dart';

import 'package:afc_mobile/features/course/domain/entities/course.dart';
import 'package:afc_mobile/features/course/presentation/course_teacher/widgets/course_item.dart';

class ListCourse extends StatelessWidget {
  final List<Course> courses;

  const ListCourse({Key key, this.courses}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 15),
      itemCount: courses.length,
      itemBuilder: (context, index) => CourseItem(
        course: courses[index],
      ),
    );
  }
}
