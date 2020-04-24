import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/courses_list.dart';
import 'package:afc_mobile/student/student.dart';
import 'package:afc_mobile/common/widgets/widgets.dart';

class CourseStudentPage extends StatefulWidget {
  @override
  _CourseStudentPageState createState() => _CourseStudentPageState();
}

class _CourseStudentPageState extends State<CourseStudentPage> {
  bool initial = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CourseStudentBloc, CourseStudentState>(
        builder: (context, state) {
          return state.when(
            loading: () => LoadingIndicator(),
            loaded: (courses) => CourseList(courses: courses),
            failure: () => ErrorScreen(onRetry: fetchCourses),
          );
        },
      ),
    );
  }

  @override
  void initState() {
    if (initial) {
      fetchCourses();
      initial = false;
    }
    super.initState();
  }

  void fetchCourses() {
    context.bloc<CourseStudentBloc>().add(CourseStudentEvent.fetch());
  }
}
