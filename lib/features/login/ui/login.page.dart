import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:afc_mobile/features/login/login.dart';
import 'package:afc_mobile/features/login/ui/footer.dart';
import 'package:afc_mobile/features/login/ui/form.dart';
import 'package:afc_mobile/shared/widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/login';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void handleOnListener(BuildContext context, LoginState state) {
    if (state is LoginFailure) {
      if (state.error.type == DioErrorType.RESPONSE) {
        Scaffold.of(context).removeCurrentSnackBar();
        Scaffold.of(context).showSnackBar(
          snackbarNotification(
            type: SnackBarNotificationType.ERROR,
            title: "Error",
            message: state.error.response.data['message'],
            duration: Duration(seconds: 4),
          ),
        );
      } else {
        Scaffold.of(context).removeCurrentSnackBar();
        Scaffold.of(context).showSnackBar(snackbarUnknownError());
      }
    }
  }

  void handleOnSubmit(LoginDto dto) {
    BlocProvider.of<LoginBloc>(context).add(LoginButtonPressed(dto));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocListener<LoginBloc, LoginState>(
      listener: handleOnListener,
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          final isLoading = state is LoginLoading ? true : false;

          return SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Expanded(
                  child: LoginForm(
                    isLoading: isLoading,
                    onSubmit: handleOnSubmit,
                  ),
                ),
                Footer(),
              ],
            ),
          );
        },
      ),
    ));
  }
}
