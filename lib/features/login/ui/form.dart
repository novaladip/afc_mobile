import 'package:afc_mobile/features/register/register.dart';
import 'package:afc_mobile/static/assets.dart';
import 'package:flutter/material.dart';

import 'package:afc_mobile/features/login/login.dart';
import 'package:afc_mobile/shared/widgets/widgets.dart';

class LoginForm extends StatefulWidget {
  final bool isLoading;
  final Function(LoginDto dto) onSubmit;

  const LoginForm({
    Key key,
    @required this.isLoading,
    @required this.onSubmit,
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
    return Center(
      child: BaseContainer(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Form(
            key: form,
            child: Column(
              children: <Widget>[
                Image.asset(
                  AppAssets.loginIcon,
                  height: 200,
                ),
                SizedBox(height: 20),
                TextInput(
                  labelText: "Email",
                  controller: emailController,
                  onFieldSubmitted: passwordFocusNode.requestFocus,
                  textInputAction: TextInputAction.next,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Email is cannot be empty";
                    }

                    return null;
                  },
                ),
                TextInput(
                  labelText: "Password",
                  controller: passwordController,
                  focusNode: passwordFocusNode,
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Password is cannot be empty";
                    }

                    return null;
                  },
                ),
                buildText(
                  text: "Don't have an account? ",
                  actionText: "Sign up",
                  onTap: () =>
                      Navigator.of(context).pushNamed(RegisterPage.routeName),
                ),
                buildText(
                  text: "Forgot your password? ",
                  actionText: "Reset here",
                  onTap: () {},
                ),
                SizedBox(height: 20),
                MainButton(
                  outline: true,
                  text: "Sign In",
                  onPressed: onSubmit,
                  loading: widget.isLoading,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildText({
    @required String text,
    @required String actionText,
    @required VoidCallback onTap,
  }) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          InkWell(
            onTap: onTap,
            child: Text(
              actionText,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onSubmit() {
    final isValid = form.currentState.validate();

    if (!isValid) {
      return;
    }

    final dto = LoginDto(
      email: emailController.text,
      password: passwordController.text,
    );
    widget.onSubmit(dto);
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }
}
