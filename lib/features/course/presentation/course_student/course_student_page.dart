import 'package:afc_mobile/common/widgets/widgets.dart';
import 'package:afc_mobile/features/course/presentation/course_student/bloc/course_student_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/widgets.dart';

class CourseStudentPage extends StatefulWidget {
  @override
  _CourseStudentPageState createState() => _CourseStudentPageState();
}

class _CourseStudentPageState extends State<CourseStudentPage> {
  bool initial = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Course',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Comic Neue',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: BlocBuilder<CourseStudentBloc, CourseStudentState>(
        builder: (context, state) {
          if (state is CourseStudentStateFailure) {
            return ErrorScreen(onRetry: getCourseStudent);
          }

          if (state is CourseStudentStateLoaded) {
            return ListCourse(courses: state.courses);
          }

          return LoadingIndicator();
        },
      ),
    );
  }

  @override
  void didChangeDependencies() {
    if (initial) {
      initial = false;
      getCourseStudent();
    }

    super.didChangeDependencies();
  }

  void getCourseStudent() {
    context.bloc<CourseStudentBloc>().add(GetCourseStudent());
  }
}
