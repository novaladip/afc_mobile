import 'package:afc_mobile/auth/presentation/presentation.dart';
import 'package:afc_mobile/common/widgets/widgets.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  static const routeName = '/onboarding';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
          child: Column(
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height * 0.2),
              Text(
                'Absent Face Recognition',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Manrope',
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Image.asset('assets/icons/intro.jpg'),
              ),
              Spacer(),
              MainButton(
                outline: true,
                text: 'Login',
                onPressed: () => Navigator.of(context)
                    .pushReplacementNamed(LoginPage.routeName),
              ),
              SizedBox(height: 10),
              MainButton(
                text: 'Register',
                onPressed: () => Navigator.of(context)
                    .pushReplacementNamed(RegisterPage.routeName),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
