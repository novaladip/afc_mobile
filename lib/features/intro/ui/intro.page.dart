import 'package:afc_mobile/features/register/register.dart';
import 'package:flutter/material.dart';

import 'package:afc_mobile/static/static.dart';
import 'package:afc_mobile/features/login/login.dart';
import 'package:afc_mobile/shared/widgets/widgets.dart';

class IntroPage extends StatelessWidget {
  static const routeName = '/intro';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ThemeBuilder(
        builder: (context, appTheme) {
          return SafeArea(
            child: BaseContainer(
              color: Colors.white,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Absent Face Recognition',
                    textAlign: TextAlign.center,
                    style: appTheme.textTheme.title,
                  ),
                  SizedBox(height: 50),
                  Image.asset(
                    AppAssets.introIcon,
                    width: double.infinity,
                  ),
                  SizedBox(height: 50),
                  Text(
                    'Let our AI identify your students',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 25),
                  Text(
                    'by using AFC App you\'ll save a lot of time, no need to absent your students one by one.\nJust sit back and relaxxx while our AI identifying your students.',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  MainButton(
                    outline: true,
                    text: 'Sign Up',
                    onPressed: () {
                      Navigator.of(context).pushNamed(RegisterPage.routeName);
                    },
                  ),
                  SizedBox(height: 20),
                  MainButton(
                    text: 'Sign In',
                    onPressed: () {
                      Navigator.of(context).pushNamed(LoginPage.routeName);
                    },
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
