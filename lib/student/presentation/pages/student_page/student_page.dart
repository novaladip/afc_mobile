import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:afc_mobile/student/student.dart';
import 'package:afc_mobile/profile/profile.dart';

class StudentPage extends StatefulWidget {
  static const routeName = '/student-page';

  @override
  _StudentPageState createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  int index = 0;

  void setIndex(int value) => setState(() => index = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: index,
        children: <Widget>[
          CourseStudentPage(),
          EnrollmentPage(),
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
            icon: FaIcon(
                index == 1 ? FontAwesomeIcons.bookOpen : FontAwesomeIcons.book),
            label: 'Kelas Terdaftar',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.userCircle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
