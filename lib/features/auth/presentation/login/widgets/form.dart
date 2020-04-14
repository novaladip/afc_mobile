import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:afc_mobile/common/widgets/widgets.dart';
import 'package:afc_mobile/features/auth/presentation/login/bloc/login_bloc.dart';
import 'package:afc_mobile/features/auth/presentation/login/widgets/widgets.dart';
import 'package:afc_mobile/features/auth/infrastructure/models/login_dto_model.dart';
import 'package:afc_mobile/features/auth/presentation/presentation.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key key,
  }) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final form = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: handleListener,
      builder: (context, state) {
        final isLoading = state is LoginStateLoading ? true : false;
        final primaryColor = Theme.of(context).primaryColor;

        return buildBaseLayout(
          child: SingleChildScrollView(
            child: Form(
              key: form,
              child: Column(
                children: <Widget>[
                  TextInput(
                    labelColor: primaryColor,
                    labelText: 'Email',
                    controller: emailController,
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: passwordFocusNode.requestFocus,
                    validator: (v) => validate(v, 'Email'),
                  ),
                  TextInput(
                    labelColor: primaryColor,
                    labelText: 'Password',
                    obscureText: true,
                    controller: passwordController,
                    focusNode: passwordFocusNode,
                    textInputAction: TextInputAction.done,
                    validator: (v) => validate(v, 'Password'),
                  ),
                  LoginFormCaption(
                    text: "Don't have an account? ",
                    actionText: "Sign up",
                    onPressed: () {
                      Navigator.of(context).pushNamed(RegisterPage.routeName);
                    },
                  ),
                  LoginFormCaption(
                    text: 'Forgot your password? ',
                    actionText: 'Reset',
                    onPressed: () {},
                  ),
                  SizedBox(height: 25),
                  MainButton(
                    text: 'Sign in',
                    loading: isLoading,
                    onPressed: onSubmit,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void onSubmit() {
    final isValid = form.currentState.validate();
    if (!isValid) {
      return;
    }

    context.bloc<LoginBloc>().add(
          LoginButtonPressed(
            LoginDtoModel(
              emailController.text.toLowerCase(),
              passwordController.text,
            ),
          ),
        );
  }

  String validate(String value, String fieldName) {
    if (value.isEmpty) {
      return '$fieldName is cannot be empty';
    }

    return null;
  }

  Widget buildBaseLayout({
    @required Widget child,
  }) {
    return Center(
      child: BaseContainer(
        child: child,
      ),
    );
  }

  void handleListener(BuildContext context, LoginState state) {
    if (state is LoginStateSuccess) {
      form.currentState.reset();
    }

    if (state is LoginStateFailure) {
      Scaffold.of(context)
        ..removeCurrentSnackBar()
        ..showSnackBar(
          SnackBar(
            content: Padding(
              padding: EdgeInsets.all(8),
              child: Text('Invalid email or password'),
            ),
            backgroundColor: Colors.redAccent,
            behavior: SnackBarBehavior.floating,
          ),
        );
    }
  }

  @override
  void dispose() {
    form.currentState.dispose();
    emailController.dispose();
    passwordController.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }
}
