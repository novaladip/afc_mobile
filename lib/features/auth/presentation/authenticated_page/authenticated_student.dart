import 'package:flutter/material.dart';

import 'package:afc_mobile/features/course/course.dart';
import 'package:afc_mobile/features/profile/presentation/presentation.dart';
import 'package:afc_mobile/features/enrollment/presentation/presentation.dart';

class AuthenticatedStudent extends StatefulWidget {
  @override
  _AuthenticatedStudentState createState() => _AuthenticatedStudentState();
}

class _AuthenticatedStudentState extends State<AuthenticatedStudent> {
  int index = 0;

  void setIndex(int value) => setState(() => index = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: <Widget>[
          CourseStudentPage(),
          EnrollmentPage(),
          ProfilePage(),
        ],
        index: index,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: setIndex,
        currentIndex: index,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Course'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text('Enrollment'),
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
