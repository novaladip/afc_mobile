import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:afc_mobile/common/widgets/widgets.dart';
import 'package:afc_mobile/features/course/presentation/course_teacher/widgets/widgets.dart';
import 'package:afc_mobile/features/course/presentation/course_teacher/bloc/course_teacher_bloc.dart';

class CourseTeacherPage extends StatefulWidget {
  @override
  _CourseTeacherPageState createState() => _CourseTeacherPageState();
}

class _CourseTeacherPageState extends State<CourseTeacherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Course',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Pacifito',
          ),
        ),
      ),
      body: BlocConsumer<CourseTeacherBloc, CourseTeacherState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is CourseTeacherStateFailure) {
            return ErrorScreen(
              onRetry: getCourses,
            );
          }

          if (state is CourseTeacherStateLoaded) {
            return ListCourse(courses: state.courses);
          }

          return LoadingIndicator();
        },
      ),
    );
  }

  void getCourses() {
    context.bloc<CourseTeacherBloc>().add(GetTeacherCourse());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    getCourses();
  }
}
