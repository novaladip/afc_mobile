import 'package:afc_mobile/features/teacher/course/course.dart';
import 'package:flutter/material.dart';

class HomeScreenTeacher extends StatefulWidget {
  static const routeName = '/home-teacher';

  @override
  _HomeScreenTeacherState createState() => _HomeScreenTeacherState();
}

class _HomeScreenTeacherState extends State<HomeScreenTeacher> {
  int index = 0;

  void setIndex(int newIndex) => setState(() => index = newIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: index,
        children: <Widget>[
          CourseTeacherScreen(),
          Container(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: setIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Course"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("Setting"),
          )
        ],
        currentIndex: index,
      ),
    );
  }
}
