import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        title: Text('Kelas'),
        brightness: Brightness.light,
      ),
      body: BlocBuilder<CourseTeacherBloc, CourseTeacherState>(
        builder: (context, state) {
          return state.when(
            loading: () => LoadingIndicator(),
            failure: () => ErrorScreen(onRetry: fetchCourses),
            loaded: (courses) => RefreshIndicator(
              child: CourseList(courses: courses),
              onRefresh: fetchCourses,
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            Navigator.of(context).pushNamed(AddCoursePage.routeName),
        child: FaIcon(FontAwesomeIcons.plusCircle, color: Colors.black),
        backgroundColor: Colors.white.withOpacity(0.7),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  @override
  initState() {
    fetchCourses();
    super.initState();
  }

  Future<void> fetchCourses() async {
    context.bloc<CourseTeacherBloc>().add(CourseTeacherEvent.fetchCourses());
  }
}
