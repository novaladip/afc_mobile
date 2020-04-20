import 'package:flutter/material.dart';

import 'package:afc_mobile/features/course/domain/entities/course.dart';

class ListCourse extends StatelessWidget {
  final List<Course> courses;

  const ListCourse({
    Key key,
    @required this.courses,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 20),
      itemCount: courses.length,
      itemBuilder: (context, index) {
        final course = courses[index];

        return CourseItem(
          key: Key(course.id),
          course: course,
        );
      },
    );
  }
}

class CourseItem extends StatelessWidget {
  final Course course;

  const CourseItem({
    Key key,
    @required this.course,
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
              child: Text('ENROLL'),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
