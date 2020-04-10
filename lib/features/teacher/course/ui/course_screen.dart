import 'package:afc_mobile/features/teacher/course/course.dart';
import 'package:afc_mobile/features/teacher/course/ui/course_failure.dart';
import 'package:afc_mobile/features/teacher/course/ui/course_loading.dart';
import 'package:afc_mobile/features/teacher/course/ui/courses.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CourseTeacherScreen extends StatefulWidget {
  @override
  _CourseTeacherScreenState createState() => _CourseTeacherScreenState();
}

class _CourseTeacherScreenState extends State<CourseTeacherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Course')),
      body: BlocBuilder<CourseTeacherBloc, CourseTeacherState>(
        builder: (context, state) {
          if (state is CourseTeacherFailure) {
            return CourseFailure();
          }

          if (state is CourseTeacherLoaded) {
            return Courses(courses: state.courses);
          }

          return CourseLoading();
        },
      ),
    );
  }

  void initial() {
    BlocProvider.of<CourseTeacherBloc>(context).add(FetchCourseTeacher());
  }

  @override
  void initState() {
    initial();
    super.initState();
  }
}
