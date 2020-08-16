import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        body: AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Buat Kelas',
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        fontSize: 21,
                      ),
                ),
              ),
              AddCourseForm(),
            ],
          ),
        ),
      ),
    ));
  }
}
