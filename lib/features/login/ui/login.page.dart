import 'package:afc_mobile/features/login/login.dart';
import 'package:afc_mobile/features/login/ui/footer.dart';
import 'package:afc_mobile/features/login/ui/form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/login';

  void handleOnListener(BuildContext context, LoginState state) {}

  void handleOnSubmit(LoginDto dto) {}

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
