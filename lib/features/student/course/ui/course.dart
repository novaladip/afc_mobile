import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:afc_mobile/features/student/course/course.dart';
import 'package:afc_mobile/features/student/course/ui/course_item.dart';

class Course extends StatefulWidget {
  @override
  _CourseState createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course'),
      ),
      body: BlocBuilder<CourseStudentBloc, CourseStudentState>(
        builder: (context, state) {
          if (state is CourseStudentFailure) {
            return Center(
              child: Text('Failure'),
            );
          }

          if (state is CourseStudentLoaded) {
            return ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 15),
              itemCount: state.courses.length,
              itemBuilder: (context, index) {
                return CourseItem(
                  key: Key(state.courses[index].id),
                  course: state.courses[index],
                );
              },
            );
          }

          return Center(child: Text('Loading'));
        },
      ),
    );
  }

  void fetch() {
    BlocProvider.of<CourseStudentBloc>(context).add(FetchCourseStudent());
  }

  @override
  void initState() {
    fetch();
    super.initState();
  }
}
