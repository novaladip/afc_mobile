import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:afc_mobile/auth/auth.dart';
import 'package:afc_mobile/common/utils/utils.dart';
import 'package:afc_mobile/common/widgets/widgets.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  LoginBloc loginBloc;
  final form = GlobalKey<FormState>();
  final passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return buildContainer(
      child: ThemeBuilder(
        builder: (context, appTheme) {
          return BlocConsumer<LoginBloc, LoginState>(
            listener: (context, state) {
              if (state.isFailure) {
                Scaffold.of(context)
                  ..removeCurrentSnackBar()
                  ..showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.red,
                      content: Text('Invalid email or password'),
                    ),
                  );
              }
            },
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextInput(
                    initialValue: state.email,
                    labelText: 'Email',
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: passwordFocusNode.requestFocus,
                    validator: (value) => InputValidator.email(value, 'Email'),
                    onChanged: (v) => loginBloc.add(LoginEvent.changeEmail(v)),
                  ),
                  TextInput(
                    initialValue: state.password,
                    labelText: 'Password',
                    focusNode: passwordFocusNode,
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                    validator: (value) =>
                        InputValidator.required(value, 'Password'),
                    onChanged: (v) =>
                        loginBloc.add(LoginEvent.changePassword(v)),
                  ),
                  SizedBox(height: 8),
                  loginHelp(
                    text: 'Forgot your password? ',
                    buttonText: 'Reset now',
                    onTap: () {},
                  ),
                  loginHelp(
                    text: 'Do not have an account? ',
                    buttonText: 'Sign up',
                    onTap: () =>
                        Navigator.of(context).pushNamed(RegisterPage.routeName),
                  ),
                  SizedBox(height: 15),
                  MainButton(
                    outline: true,
                    loading: state.isSubmitting,
                    text: 'Sign In',
                    onPressed: onSubmit,
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  Widget loginHelp({
    @required String text,
    @required String buttonText,
    @required VoidCallback onTap,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            text,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          InkWell(
            child: Text(
              buttonText,
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: onTap,
          )
        ],
      ),
    );
  }

  Widget buildContainer({
    @required Widget child,
  }) {
    return Center(
      child: BaseContainer(
        child: SingleChildScrollView(
          child: Form(
            key: form,
            child: child,
          ),
        ),
      ),
    );
  }

  void onSubmit() {
    final isValid = form.currentState.validate();
    if (!isValid) {
      return;
    }
    loginBloc.add(LoginEvent.submit());
  }

  @override
  void initState() {
    loginBloc = context.bloc<LoginBloc>();
    super.initState();
  }
}
