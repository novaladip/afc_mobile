import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        children: <Widget>[
          Container(),
          Container(),
          Container(),
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
            title: Text('Course'),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.bookOpen),
            title: Text('Enrollment'),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.userCircle),
            title: Text('Profile'),
          ),
        ],
      ),
    );
  }
}
