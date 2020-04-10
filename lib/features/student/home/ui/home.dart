import 'package:afc_mobile/features/student/enrollment/enrollment.dart';
import 'package:flutter/material.dart';
import 'package:afc_mobile/features/student/course/course.dart';

class BottomAppStudent extends StatefulWidget {
  static const routeName = '/home-student';

  @override
  _BottomAppStudentState createState() => _BottomAppStudentState();
}

class _BottomAppStudentState extends State<BottomAppStudent> {
  int index = 0;

  void setIndex(int newIndex) => setState(() => index = newIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: index,
        children: <Widget>[
          Course(),
          EnrollmentScreen(),
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
            icon: Icon(Icons.store),
            title: Text("Enrollment"),
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
