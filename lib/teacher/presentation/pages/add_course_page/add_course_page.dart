import 'package:flutter/material.dart';

import 'widgets/add_course_form.dart';

class AddCoursePage extends StatefulWidget {
  static const routeName = '/add-course';

  @override
  _AddCoursePageState createState() => _AddCoursePageState();
}

class _AddCoursePageState extends State<AddCoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Add Course',
                  style: Theme.of(context).textTheme.title,
                ),
              ),
              AddCourseForm(),
            ],
          ),
        ),
      ),
    );
  }
}
