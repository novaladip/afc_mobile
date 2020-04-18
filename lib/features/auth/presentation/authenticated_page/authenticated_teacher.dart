import 'package:flutter/material.dart';

import 'package:afc_mobile/features/course/course.dart';

class AuthenticatedTeacher extends StatefulWidget {
  @override
  _AuthenticatedTeacherState createState() => _AuthenticatedTeacherState();
}

class _AuthenticatedTeacherState extends State<AuthenticatedTeacher> {
  int index = 0;

  void setIndex(int value) => setState(() => index = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: <Widget>[
          CourseTeacherPage(),
          Container(),
        ],
        index: index,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: setIndex,
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Course'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ],
      ),
    );
  }
}
