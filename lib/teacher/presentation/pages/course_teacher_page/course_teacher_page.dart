import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/course_list.dart';
import 'package:afc_mobile/teacher/teacher.dart';
import 'package:afc_mobile/common/widgets/widgets.dart';

class CourseTeacher extends StatefulWidget {
  @override
  _CourseTeacherState createState() => _CourseTeacherState();
}

class _CourseTeacherState extends State<CourseTeacher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course'),
      ),
      body: BlocBuilder<CourseTeacherBloc, CourseTeacherState>(
        builder: (context, state) {
          return state.when(
            loading: () => LoadingIndicator(),
            failure: () => ErrorScreen(onRetry: fetchCourses),
            loaded: (courses) => CourseList(courses: courses),
          );
        },
      ),
    );
  }

  @override
  initState() {
    fetchCourses();
    super.initState();
  }

  void fetchCourses() {
    context.bloc<CourseTeacherBloc>().add(CourseTeacherEvent.fetchCourses());
  }
}
