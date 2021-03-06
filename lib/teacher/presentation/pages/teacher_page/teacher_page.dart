import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:afc_mobile/teacher/teacher.dart';
import 'package:afc_mobile/profile/profile.dart';

class TeacherPage extends StatefulWidget {
  static const routeName = '/teacher-page';

  @override
  _TeacherPageState createState() => _TeacherPageState();
}

class _TeacherPageState extends State<TeacherPage> {
  int index = 0;

  void setIndex(int value) => setState(() => index = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: index,
        children: <Widget>[
          CourseTeacher(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: setIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.list),
            label: 'Kelas',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.userTie),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
