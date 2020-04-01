import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:afc_mobile/features/register/ui/form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:afc_mobile/features/login/login.dart';
import 'package:afc_mobile/features/register/dto/dto.dart';
import 'package:afc_mobile/features/register/register.dart';
import 'package:afc_mobile/shared/widgets/widgets.dart';

class RegisterPage extends StatefulWidget {
  static const routeName = '/register';

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  _handleOnSubmit(bool isStudent, RegisterDto dto) {
    BlocProvider.of<RegisterBloc>(context).add(
      isStudent ? RegisterStudentPressed(dto) : RegisterTeacherPressed(dto),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<RegisterBloc, RegisterState>(
        listener: (context, state) {
          if (state is RegisterSuccess) {
            Navigator.of(context).pushReplacementNamed(LoginPage.routeName);
          }

          if (state is RegisterFailure) {
            if (state.error.type == DioErrorType.RESPONSE) {
              Scaffold.of(context).removeCurrentSnackBar();
              Scaffold.of(context).showSnackBar(snackbarNotification(
                type: SnackBarNotificationType.ERROR,
                title: "Failed",
                message: state.error.response.data['message'],
                duration: Duration(seconds: 5),
              ));
            } else {
              Scaffold.of(context).removeCurrentSnackBar();
              Scaffold.of(context).showSnackBar(snackbarNotification(
                type: SnackBarNotificationType.ERROR,
                title: "Error",
                message: "Oops something went wrong",
              ));
            }
          }
        },
        child: BlocBuilder<RegisterBloc, RegisterState>(
          builder: (context, state) {
            return ThemeBuilder(
              builder: (context, appTheme) {
                bool isStudent = false;
                final bool isLoading = state is RegisterLoading ? true : false;

                if (state is RegisterLoading) {
                  isStudent = state.isStudent;
                }

                return BaseContainer(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'One more step to join with us',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 35),
                        FormRegister(
                          onSubmit: _handleOnSubmit,
                          isLoading: isLoading,
                          isStudent: isStudent,
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
